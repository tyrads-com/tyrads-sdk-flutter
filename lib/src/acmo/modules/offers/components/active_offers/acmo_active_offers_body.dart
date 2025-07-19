// File: acmo_active_offers_body.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/core/components/acmo_simple_dialog.dart';
import 'package:tyrads_sdk/src/acmo/core/components/bottombar_button.dart';
import 'package:tyrads_sdk/src/acmo/core/components/overlay_loading.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/models/offer_details.dart'
    show AcmoOfferDetailsModel;
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/components/active_offers/active_loading_skeleton.dart' show AcmoActiveSkeletonLoading;
import 'package:tyrads_sdk/src/acmo/modules/offers/components/active_offers/active_offer_error_section.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/active_offers/active_offers.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'game_icons_row.dart';
import 'active_offer_top_section.dart';
import 'active_offer_bottom_section.dart';
import 'no_offers_view.dart';

class AcmoActiveOffersBody extends StatefulWidget {
  const AcmoActiveOffersBody({super.key, required this.controller});

  final AcmoOffersController controller;

  @override
  State<AcmoActiveOffersBody> createState() => _AcmoActiveOffersBodyState();
}

class _AcmoActiveOffersBodyState extends State<AcmoActiveOffersBody>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  late var _controller = widget.controller;
  late final ValueNotifier<int> _currentIndexNotifier;
  final ValueNotifier<ActiveCampaign?> _selectedCampaignNotifier =
      ValueNotifier<ActiveCampaign?>(null);
  final ValueNotifier<bool> _isPlayButtonVisible = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isButtonDisabled = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isRetry = ValueNotifier<bool>(false);

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    _controller = widget.controller;
    int initialIndex;
    if (_controller.hotDeals.value.isNotEmpty && _controller.tabIndex == null) {
      initialIndex = 0;
      _selectedCampaignNotifier.value = _controller.hotDeals.value.first;
    } else if (_controller.urgentTasks.value.isNotEmpty &&
        _controller.tabIndex == null) {
      initialIndex = 1;
      _selectedCampaignNotifier.value = _controller.urgentTasks.value.first;
    } else {
      initialIndex = 2;
      _selectedCampaignNotifier.value = _controller.allDeals.value.firstOrNull;
    }

    _currentIndexNotifier = ValueNotifier<int>(initialIndex);
    _controller.currentCampaignDetails.addListener(() {
      final hasDetails = _controller.currentCampaignDetails.value != null;
      _isPlayButtonVisible.value = hasDetails;
      _isButtonDisabled.value = hasDetails &&
          checkIsButtonDisabled(_controller.currentCampaignDetails.value!);
      _isRetry.value = hasDetails &&
          _controller.currentCampaignDetails.value!.isRetryDownload &&
          !_controller.currentCampaignDetails.value!.isInstalled;
    });
    _onTabChanged(_currentIndexNotifier.value);
  }

  bool checkIsButtonDisabled(AcmoOfferDetailsModel details) {
    if ((details.capReached && !details.isInstalled) ||
        (details.isOldUser && !details.isInstalled) ||
        (details.status.toLowerCase() == "paused" &&
            details.expiredOn == null) ||
        details.status.toLowerCase() == "suspended") {
      return true;
    }
    return false;
  }

  @override
  void dispose() {
    _refreshController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _refreshController.requestRefresh();
    }
  }

  onItemClick(id) {
    Tyrads.instance.to(AcmoOfferDetailsPage(
      id: id,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SmartRefresher(
          controller: _refreshController,
          header: const WaterDropMaterialHeader(),
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: () async {
            await _controller.loadActiveOffers();
            if (mounted) {
              _onTabChanged(_currentIndexNotifier.value);
              setState(() {
                _refreshController.refreshCompleted();
              });
            }
          },
          child: Column(
            children: [
              if (_controller.hotDeals.value.isNotEmpty ||
                  _controller.urgentTasks.value.isNotEmpty ||
                  _controller.allDeals.value.isNotEmpty)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    spacing: 8,
                    children: [
                      if (_controller.hotDeals.value.isNotEmpty)
                        _buildTabButton(
                          index: 0,
                          label: 'Hot Deals',
                          icon: Assets.icons.hotjar.image(width: 14),
                          bubbleCount:
                              _controller.hotDeals.value.length.toString(),
                        ),
                      if (_controller.urgentTasks.value.isNotEmpty)
                        _buildTabButton(
                          index: 1,
                          label: 'Urgent Tasks',
                          icon: Assets.icons.triangleWarning.image(width: 14),
                          bubbleCount:
                              _controller.urgentTasks.value.length.toString(),
                        ),
                      if (_controller.allDeals.value.isNotEmpty)
                        _buildTabButton(
                          index: 2,
                          label: 'All',
                          bubbleCount:
                              _controller.allDeals.value.length.toString(),
                          bubbleColor: const Color(0xFFE0E2E7),
                          bubbleTextColor: const Color(0xFF1E2020),
                        ),
                    ],
                  ),
                ),
              Expanded(
                child: ValueListenableBuilder<int>(
                  valueListenable: _currentIndexNotifier,
                  builder: (context, index, child) {
                    return Stack(
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          child: KeyedSubtree(
                            key: ValueKey<int>(index),
                            child: _buildIndexedStackContent(index),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 74,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ValueListenableBuilder(
              valueListenable: _isButtonDisabled,
              builder: (context, isDisabled, child) {
                return ValueListenableBuilder(
                    valueListenable: _isRetry,
                    builder: (context, isRetry, _) {
                      return AcmoBottomBarButton(
                        showButton: _isPlayButtonVisible,
                        label: isRetry ? "Retry" : "Play Now",
                        isDisabled: isDisabled,
                        onTap: () async {
                          final item = _controller.currentCampaignDetails.value;
                          Loading.open();
                          await _controller.openOffer(
                            clickUrl: item?.tracking.clickUrl,
                            s2sClickUrl: item?.tracking.s2sClickUrl,
                            isRetryDownload: item?.isRetryDownload ?? false,
                            isInstalled: item?.isInstalled ?? false,
                            previewUrl: item?.app.previewUrl ?? '',
                            campaignId: item?.campaignId ?? 0,
                          );
                          Loading.dismiss();
                        },
                      );
                    });
              }),
        ),
      ],
    );
  }

  Widget _buildIndexedStackContent(int index) {
    switch (index) {
      case 0:
        return _buildActiveOfferContent(index);
      case 1:
        return _buildActiveOfferContent(index);
      case 2:
        return _buildActiveOfferContent(index);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildTabButton({
    required int index,
    required String label,
    Widget? icon,
    String? bubbleCount,
    Color? bubbleColor,
    Color? bubbleTextColor,
  }) {
    return GestureDetector(
      onTap: () {
        if (widget.controller.isFetchingDetails.value) {
          return;
        }
        if (index != _currentIndexNotifier.value) {
          _currentIndexNotifier.value = index;
          _onTabChanged(index);
        }
      },
      child: ValueListenableBuilder<int>(
        valueListenable: _currentIndexNotifier,
        builder: (context, currentIndex, child) {
          final isSelected = currentIndex == index;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: isSelected
                  ? const Color(0xFF1E2020)
                  : const Color(0xFFF0F1F3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: icon != null ? 4 : (bubbleCount != null ? 8 : 0),
              children: [
                if (icon != null)
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: ColorFiltered(
                      key: ValueKey<bool>(isSelected),
                      colorFilter: ColorFilter.mode(
                        isSelected ? Colors.white : Colors.black,
                        BlendMode.srcIn,
                      ),
                      child: icon,
                    ),
                  ),
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 200),
                  style: GoogleFonts.poppins(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                  child: Text(label),
                ),
                if (bubbleCount != null)
                  _buildBubble(
                    bubbleCount,
                    color: bubbleColor,
                    textColor: bubbleTextColor,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _onTabChanged(int index) {
    _currentIndexNotifier.value = index;
    _controller.currentCampaignDetails.value = null;
    switch (index) {
      case 0:
        _selectedCampaignNotifier.value = _controller.hotDeals.value.isNotEmpty
            ? _controller.hotDeals.value.first
            : null;
        if (_controller.hotDeals.value.isNotEmpty) {
          _controller
              .fetchOfferDetails(_controller.hotDeals.value.first.campaignId);
        } else {
          _controller.currentCampaignDetails.value = null;
        }
        break;
      case 1:
        _selectedCampaignNotifier.value =
            _controller.urgentTasks.value.isNotEmpty
                ? _controller.urgentTasks.value.first
                : null;
        if (_controller.urgentTasks.value.isNotEmpty) {
          _controller.fetchOfferDetails(
              _controller.urgentTasks.value.first.campaignId);
        } else {
          _controller.currentCampaignDetails.value = null;
        }
        break;
      case 2:
        _selectedCampaignNotifier.value = _controller.allDeals.value.isNotEmpty
            ? _controller.allDeals.value.first
            : null;
        if (_controller.allDeals.value.isNotEmpty) {
          _controller
              .fetchOfferDetails(_controller.allDeals.value.first.campaignId);
        } else {
          _controller.currentCampaignDetails.value = null;
        }
        break;
    }
  }

  void _onGameIconTap(ActiveCampaign campaign) {
    if (campaign.campaignId != _selectedCampaignNotifier.value?.campaignId) {
      _selectedCampaignNotifier.value = campaign;
      _controller.currentCampaignDetails.value = null;
      _controller.fetchOfferDetails(campaign.campaignId);
    }
  }

  Container _buildBubble(String a, {Color? color, Color? textColor}) {
    return Container(
      alignment: Alignment.center,
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? const Color(0xFFFF554A),
      ),
      child: Text(
        a,
        style: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }

  Widget _buildActiveOfferContent(int tabIndex) {
    final currentSelectedTab = tabIndex == 0
        ? "hot"
        : tabIndex == 1
            ? "urgent"
            : "all";
    return ValueListenableBuilder<List<ActiveCampaign>>(
      valueListenable: switch (tabIndex) {
        0 => _controller.hotDeals,
        1 => _controller.urgentTasks,
        2 => _controller.allDeals,
        _ => ValueNotifier<List<ActiveCampaign>>([]),
      },
      builder: (context, campaigns, _) {
        if (campaigns.isEmpty) {
          return _buildEmptyOfferContent();
        }
        return ListView(
          padding: const EdgeInsets.only(
            bottom: 16,
          ),
          children: [
            ValueListenableBuilder<ActiveCampaign?>(
              valueListenable: _selectedCampaignNotifier,
              builder: (context, selectedCampaign, _) {
                return GameIconsRow(
                  campaigns: campaigns,
                  selectedCampaign: selectedCampaign,
                  onIconTap: _onGameIconTap,
                );
              },
            ),
            ValueListenableBuilder(
                valueListenable: _controller.isFetchingDetails,
                builder: (context, isLoading, child) {
                  if (isLoading) {
                    return const AcmoActiveSkeletonLoading();
                  }
                  return ValueListenableBuilder<AcmoOfferDetailsModel?>(
                    valueListenable: _controller.currentCampaignDetails,
                    builder: (context, offerDetails, _) {
                      if (offerDetails == null) {
                        return const SizedBox.shrink();
                      }
                      return Container(
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            ActiveOfferTopSection(
                              offerDetails: offerDetails,
                              tab: currentSelectedTab,
                            ),
                            Container(
                              color: const Color(0xFFF0F1F3),
                              height: 5,
                            ),
                            if (offerDetails.isRetryDownload &&
                                !offerDetails.isInstalled)
                              AcmoActiveOfferErrorSection(
                                imageUrl: offerDetails.app.thumbnail,
                                icon: Assets.icons.rotateSquare.image(
                                  width: 24,
                                  color: Colors.white,
                                ),
                                title: "We couldn't validate your download",
                                styledText:
                                    'Click <b>"Retry"</b> to try again <b>Rewards need a tracked download</b>',
                                onTapMoreInfo: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AcmoSimpleDialog(
                                        title: 'More Information',
                                        styledInformation:
                                            'Rewards will be available once the game is fully installed. If you\'re new here, make sure the <b>download finishes completely</b>.\n\nIf it was interrupted, just tap <b>Retry</b> to continue and unlock your rewards!',
                                      );
                                    },
                                  );
                                },
                              )
                            else if ((offerDetails.capReached &&
                                    !offerDetails.isInstalled) ||
                                offerDetails.status == "suspended" ||
                                (offerDetails.status == "paused" &&
                                    offerDetails.expiredOn == null))
                              AcmoActiveOfferErrorSection(
                                imageUrl: offerDetails.app.thumbnail,
                                icon: Assets.icons.circleX.image(
                                  width: 24,
                                  color: Colors.white,
                                ),
                                styledText:
                                    'Sorry, this game is <b>temporarily unavailable</b>, please come back later!',
                                onTapMoreInfo: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AcmoSimpleDialog(
                                        title: 'More Information',
                                        styledInformation:
                                            'This game is <b>temporarily unavailable.</b>\nPlease check again later!',
                                      );
                                    },
                                  );
                                },
                              )
                            else if (offerDetails.isOldUser &&
                                !offerDetails.isInstalled)
                              AcmoActiveOfferErrorSection(
                                imageUrl: offerDetails.app.thumbnail,
                                icon: Assets.icons.triangleWarning.image(
                                  width: 24,
                                  color: Colors.white,
                                ),
                                styledText:
                                    'You’ve <b>previously downloaded</b> this game, so it won’t track progress or earn Tpoints. Please choose another new game.',
                                onTapMoreInfo: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AcmoSimpleDialog(
                                        title: 'More Information',
                                        styledInformation:
                                            'This game was <b>previously installed</b>, so progress won’t be tracked and TPoints cannot be earned.\n\nPlease choose a different game to continue earning rewards.',
                                      );
                                    },
                                  );
                                },
                              )
                            else if (!offerDetails.isInstalled &&
                                !offerDetails.isRetryDownload)
                              AcmoActiveOfferErrorSection(
                                imageUrl: offerDetails.app.thumbnail,
                                title: 'Installing...',
                                coinUrl:
                                    offerDetails.currency.adUnitCurrencyIcon,
                                icon: Assets.icons.downToLine.image(
                                  width: 24,
                                  color: Colors.white,
                                ),
                                styledText:
                                    'Finish install to unlock all rewards, and earn upto <coin/> <b>${offerDetails.campaignPayout.totalPlayablePayoutConverted.numeral(digits: 2)}</b>',
                                onTapMoreInfo: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AcmoSimpleDialog(
                                        title: 'More Information',
                                        styledInformation:
                                            'Rewards will be available once the game is fully installed. If you\'re new here, make sure the <b>download finishes completely</b>.\n\nIf it was interrupted, just tap <b>Retry</b> to continue and unlock your rewards!',
                                      );
                                    },
                                  );
                                },
                              )
                            else
                              ActiveOfferBottomSection(
                                offerDetails: offerDetails,
                                tab: currentSelectedTab,
                              ),
                          ],
                        ),
                      );
                    },
                  );
                }),
          ],
        );
      },
    );
  }

  Widget _buildEmptyOfferContent() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: AcmoNoOffersView(
        onButtonPressed: () {
          Tyrads.instance.back();
        },
      ),
    );
  }
}

