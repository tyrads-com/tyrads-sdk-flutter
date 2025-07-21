// File: acmo_active_offers_page.dart
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/acmo/core/components/appbar.dart';
import 'package:tyrads_sdk/src/acmo/core/components/loading_coins.dart';
import 'package:tyrads_sdk/src/acmo/modules/offers/controller.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import '../components/active_offers/acmo_active_offers_body.dart';

class AcmoActiveOffersPage extends StatefulWidget {
  const AcmoActiveOffersPage({super.key, this.tabIndex});

  final int? tabIndex;

  @override
  State<AcmoActiveOffersPage> createState() => _AcmoActiveOffersPageState();
}

class _AcmoActiveOffersPageState extends State<AcmoActiveOffersPage> {
  final _controller = AcmoOffersController();

  @override
  void initState() {
    super.initState();
    loadData();
    _controller.tabIndex = widget.tabIndex;
  }

  void loadData() async {
    await _controller.loadActiveOffers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AcmoAppBar(
        titleText: t.activeOffers.title,
      ),
      body: ValueListenableBuilder(
          valueListenable: _controller.isActiveOffersLoading,
          builder: (context, isLoading, _) {
            if (isLoading) return const AcmoLoadingCoins();
            return AcmoActiveOffersBody(controller: _controller);
          }),
    );
  }
}
