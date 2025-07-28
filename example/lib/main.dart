// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:example/env/env.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeTyrads();
  runApp(const MyApp());
}

void initializeTyrads({
  String? apiKey,
  String? apiSecret,
  String? encKey,
  String? userID,
}) async {
  log("initializeTyrads $apiKey,  $apiSecret,  $userID");
  await Tyrads.instance
      .init(
    apiKey:apiKey ?? Env.TYRADS_SDK_KEY,
    apiSecret: apiSecret ?? Env.TYRADS_SDK_SECRET,
    encryptionKey: encKey ?? Env.TYRADS_SDK_ENC_KEY,
    userInfo: TyradsUserInfo(
      email: "example@tyrads.com",
      phoneNumber: "001234567890",
      userGroup: "High purchase user",
    ),
    mediaSourceInfo: TyradsMediaSourceInfo(
      mediaSourceName: "Facebook",
      mediaCampaignName: "Summer2023Promo",
      mediaSourceId: "FB001",
      mediaSubSourceId: "FB001_Stories",
      incentivized: false,
      mediaAdsetName: "YoungAdults25-34",
      mediaAdsetId: "AD001",
      mediaCreativeName: "SummerSale_Video",
      mediaCreativeId: "CR001",
      sub1: "ReferralCode123",
      sub2: "OrganicInstall",
      sub3: "HighValueUser",
      sub4: "FirstTimeUser",
      sub5: "iOSDevice",
    ),
  );
  await Tyrads.instance.loginUser(userID: userID ?? "user1234");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tyrrewards SDK Demo',
      theme: ThemeData.light(),
      home: Builder(builder: (context) {
        return const MyHomePage(title: "Tyrads SDK");
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late TextEditingController apiKeyController;
  late TextEditingController apiSecretController;
  late TextEditingController encKeyController;
  late TextEditingController userIDController;
  @override
  void initState() {
    super.initState();
    apiKeyController = TextEditingController();
    apiSecretController = TextEditingController();
    encKeyController = TextEditingController();
    userIDController = TextEditingController();
  }
  @override
  void dispose() {
    super.dispose();
    apiKeyController.dispose();
    apiSecretController.dispose();
    encKeyController.dispose();
    userIDController.dispose();
  }
  void _showOfferwall() async {
    if((apiKeyController.text.isNotEmpty && apiSecretController.text.isNotEmpty) || userIDController.text.isNotEmpty){

      await Tyrads.instance.initializationWait.future;

      initializeTyrads(
        apiKey: apiKeyController.text.isEmpty ? null : apiKeyController.text,
        apiSecret: apiSecretController.text.isEmpty ? null : apiSecretController.text,
        encKey: encKeyController.text.isEmpty ? null : encKeyController.text,
        userID: userIDController.text.isEmpty? null : userIDController.text,
      );
    }

    Tyrads.instance.setCallback(TyradsCallbackType.campaignDetail, (data) {
      log("TyradsCallbackType.campaignDetail: $data");
    });
    // var isLoginSuccessful = await Tyrads.instance.loginUser(userID: userID);
    // if(!isLoginSuccessful){
    //   //re-initialize
    // }

    // or you can login without waiting for the future

    //  Tyrads.instance.loginUser(userID: userID);
    //   if(!Tyrads.instance.initializationWait.isCompleted){
    //      await Tyrads.instance.initializationWait.future;
    //   }
    //   if(!Tyrads.instance.isLoginSuccessful){
    //     //re-initialize
    //   }

    Tyrads.instance.showOffers(context,
      // ,campaignID: 00,route: TyradsDeepRoutes.CAMPAIGN_TICKETS
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Tyrads.instance.topOffersWidget(context),
              SizedBox(
                width: 300,
                child: TextField(
                    controller: apiKeyController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Api_Key (Optional)",
                    )
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextField(
                    controller: apiSecretController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Api_Secret (Optional)",
                    )
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextField(
                    controller: encKeyController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Encryption Key (Optional)",
                    )
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextField(
                    controller: userIDController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Custom user Id or empty for anonymous user",
                    )
                ),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                  onPressed: _showOfferwall, child: const Text("Show offerwall"))
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
