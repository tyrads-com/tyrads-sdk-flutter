// File: acmo_active_offers_page.dart
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading_coins.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import '../components/active_offers/acmo_active_offers_body.dart';
class AcmoActiveOffersPage extends StatefulWidget {
  const AcmoActiveOffersPage({super.key});

  @override
  State<AcmoActiveOffersPage> createState() => _AcmoActiveOffersPageState();
}

class _AcmoActiveOffersPageState extends State<AcmoActiveOffersPage> {
  final _controller = AcmoOffersController();
  late final _futureData = _controller.loadActiveOffers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcmoAppBar(
        titleText: t.activeOffers.title,
      ),
      body: FutureBuilder(
          future: _futureData,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const AcmoLoadingCoins();
            return AcmoActiveOffersBody(controller: _controller);
          }),
    );
  }
}