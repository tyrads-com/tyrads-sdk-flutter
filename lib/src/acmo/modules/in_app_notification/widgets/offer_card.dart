import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/controllers.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/models/limited_time_offer/limited_time_offer.dart';
import 'package:tyrads_sdk/src/acmo/modules/in_app_notification/widgets/count_down.dart';
import 'package:tyrads_sdk/src/gen/assets.gen.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

class OfferCard extends StatelessWidget {
  final ActiveCampaign campaign;
  final VoidCallback? onPlayNow;

  const OfferCard({
    super.key,
    required this.campaign,
    this.onPlayNow,
  });

  @override
  Widget build(BuildContext context) {
    final controller = AcmoInAppNotificationController.instance;
    final String displayIcon = campaign.app.thumbnail;
    final String displayName = campaign.app.title;
    final List<PayoutEvents> event = campaign.limitedTimeEvents;
    final String currencyIconUrl = campaign.currency!.adUnitCurrencyIcon;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: DefaultTextStyle(
        style: GoogleFonts.poppins(),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFF9ED),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Assets.images.alarmBackground.image(
                    width: 205,
                    height: 205,
                  )),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 43,
                          height: 43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[200],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: displayIcon,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Container(
                                color: Colors.grey[300],
                                child: const Center(
                                  child: SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                        strokeWidth: 2),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) {
                                return Image.asset(
                                  'assets/images/alarm_background.png',
                                  package: 'tyrads_sdk',
                                  width: 12,
                                  height: 12,
                                  fit: BoxFit.contain,
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Text(
                            displayName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF1E2020),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        itemCount: event.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: index < event.length - 1 ? 8 : 0,
                            ),
                            child: _buildTaskItem(
                              event[index],
                              currencyIconUrl,
                              controller,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: onPlayNow,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Tyrads.instance.colorMain ??
                              const Color(0xFF02B5BE),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 4,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Play Now',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTaskItem(
    PayoutEvents event,
    String? currencyIconUrl,
    controller,
  ) {
    final status = controller.getFinalStatusString(event);
    final bool showTimer = controller.showCountdown(event);
    controller.formatTimer(event.limitedTimeEventRemainingSeconds);

    final bool isRejected = event.conversionStatus?.toLowerCase() == 'rejected';
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.eventName,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF1E2020),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: currencyIconUrl ?? "",
                      width: 12,
                      height: 12,
                      fit: BoxFit.contain,
                      placeholder: (context, url) => Container(
                        width: 12,
                        height: 12,
                        color: Colors.transparent,
                        child: const Center(
                          child: SizedBox(
                            width: 8,
                            height: 8,
                            child: CircularProgressIndicator(strokeWidth: 1.2),
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) {
                        return Image.asset(
                          'assets/images/alarm_background.png',
                          package: 'tyrads_sdk',
                          width: 12,
                          height: 12,
                          fit: BoxFit.contain,
                        );
                      },
                    ),
                    const SizedBox(width: 4),
                    Text(
                      event.payoutAmountConverted.beautiful,
                      style: GoogleFonts.poppins(
                        color: Tyrads.instance.colorMain ??
                            const Color(0xFF02B5BE),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (!showTimer)
            Text(
              status,
              style: GoogleFonts.poppins(
                color: isRejected
                    ? const Color(0xFFFF554A)
                    : const Color(0xFFA3A9B6),
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            )
          else
            Container(
              height: 22,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFFF554A),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: AcmoComponentCountdown(
                  key: ValueKey('countdown_${event.id}'),
                  countdownId: 'countdown_${event.id}',
                  seconds: event.limitedTimeEventRemainingSeconds.toInt(),
                  formatType: 'hh:mm:ss',
                ),
              ),
            ),
        ],
      ),
    );
  }
}
