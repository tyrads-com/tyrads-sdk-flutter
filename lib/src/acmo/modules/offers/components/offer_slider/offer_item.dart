import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marquee/marquee.dart';
import 'package:numeral/numeral.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/models/offers.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

import 'play_button.dart';

class AcmoOfferHeaderListItem extends StatelessWidget {
  const AcmoOfferHeaderListItem({
    super.key,
    required this.e,
    this.padding,
  });

  final AcmoOffersModel e;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 4.0, horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: e.app.thumbnail,
              height: 38,
              width: 38,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final text = e.app.title;
                    final textStyle = TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Tyrads.instance.colorPremiumFg,
                    );

                    final textPainter = TextPainter(
                      text: TextSpan(text: text, style: textStyle),
                      maxLines: 1,
                      textDirection: TextDirection.ltr,
                    )..layout(maxWidth: constraints.maxWidth);

                    if (textPainter.didExceedMaxLines) {
                      return SizedBox(
                        height: 20,
                        child: Marquee(
                          text: text,
                          style: textStyle,
                          scrollAxis: Axis.horizontal,
                          blankSpace: 20.0,
                          velocity: 25.0,
                          pauseAfterRound:const Duration(seconds: 1),
                          startPadding: 10.0,
                          accelerationDuration:const Duration(seconds: 1),
                          accelerationCurve: Curves.linear,
                          decelerationDuration:const Duration(milliseconds: 500),
                          decelerationCurve: Curves.easeOut,
                        ),
                      );
                    } else {
                      return Text(
                        text,
                        style: textStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      );
                    }
                  },
                ),
                const Spacer(),
                Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: e.currency.adUnitCurrencyIcon,
                      height: 11,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "${e.campaignPayout.totalPayoutConverted.numeral(digits: 2)} ${e.currency.adUnitCurrencyName}",
                      style: TextStyle(
                        fontSize: 11,
                        color: Tyrads.instance.colorPremiumFg,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        "${e.campaignPayout.totalEvents} ${t.offers.rewards(n: e.campaignPayout.totalEvents)}",
                        softWrap: false,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 8,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 4)
              ],
            ),
          ),
          const SizedBox(width: 4),
          PlayButton(
            text: t.offers.offersCta,
            backgroundColor: Colors.white,
            textStyle: TextStyle(
              color: Tyrads.instance.colorPremium,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
