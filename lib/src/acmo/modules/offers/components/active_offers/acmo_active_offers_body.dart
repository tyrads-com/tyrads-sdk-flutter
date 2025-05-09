// File: acmo_active_offers_body.dart
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tyrads_sdk/src/acmo/modules/offer_details/page.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'filter_tabs.dart';
import 'game_icons_row.dart';
import 'offer_top_container.dart';
import 'offer_bottom_container.dart';
import 'play_now_button.dart';
import 'no_offers_view.dart';

class AcmoActiveOffersBody extends StatefulWidget {
  const AcmoActiveOffersBody({super.key, required this.controller});

  final AcmoOffersController controller;
  @override
  State<AcmoActiveOffersBody> createState() => _AcmoActiveOffersBodyState();
}

class _AcmoActiveOffersBodyState extends State<AcmoActiveOffersBody> with WidgetsBindingObserver {
  // Create a new RefreshController for each instance of this widget
  final RefreshController _refreshController = RefreshController(initialRefresh: false);
  late final _controller = widget.controller;
  int _selectedTabIndex = 0;

  // Shortened tab labels
  final List<String> _tabs = ['Active Offer', 'Expiring Offer', 'Completed Offer'];

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    // Make sure to dispose the controller to prevent memory leaks
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
    // Determine if we should show the Play Now button based on the selected tab
    final bool showPlayNowButton = _selectedTabIndex == 0;

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
              setState(() {
                _refreshController.refreshCompleted();
              });
            }
          },
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(bottom: showPlayNowButton ? 80 : 16),
            children: [
              // Filter tabs
              FilterTabs(
                tabs: _tabs,
                selectedIndex: _selectedTabIndex,
                onSelected: (index) {
                  setState(() {
                    _selectedTabIndex = index;
                  });
                },
              ),

              // Conditional content based on selected tab
              if (_selectedTabIndex == 0)
                _buildActiveOfferContent()
              else
                _buildEmptyOfferContent(),

              const SizedBox(height: 24),
            ],
          ),
        ),

         if (showPlayNowButton)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: PlayNowButton(
              onPressed: () {
                // Handle play now action
              },
            ),
          ),
      ],
    );
  }
  // Active offer content method
  Widget _buildActiveOfferContent() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Active Offer Label
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Active Offer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),

        // Game icons row
        GameIconsRow(),

        SizedBox(height: 12),

        // First container (top part)
        OfferTopContainer(),

        SizedBox(height: 8),

        // Second container (bottom part)
        OfferBottomContainer(),
      ],
    );
  }

   Widget _buildEmptyOfferContent() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: NoOffersView(
        onButtonPressed: () {

        },
      ),
    );
  }
}
