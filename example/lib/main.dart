// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';

import 'package:example/env/env.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeTyrads();
  runApp(const MyApp());
}

Future<void> initializeTyrads({
  String? apiKey,
  String? apiSecret,
  String? encKey,
  String? userID,
}) async {
  log("initializeTyrads $apiKey,  $apiSecret,  $userID");
  await Tyrads.instance.init(
    apiKey: apiKey ??
        (Platform.isIOS ? Env.TYRADS_SDK_IOS_KEY : Env.TYRADS_SDK_KEY),
    apiSecret: apiSecret ??
        (Platform.isIOS ? Env.TYRADS_SDK_IOS_SECRET : Env.TYRADS_SDK_SECRET),
    encryptionKey: Platform.isIOS ? encKey : encKey ?? Env.TYRADS_SDK_ENC_KEY,
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
  await Tyrads.instance.loginUser(userID: userID ?? "acmo_3424");
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
  bool loading = false;
  int style = 1;
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
    final apiKey = apiKeyController.text.trim();
    final apiSecret = apiSecretController.text.trim();
    final userID = userIDController.text.trim();

    bool hasApiKey = apiKey.isNotEmpty;
    bool hasApiSecret = apiSecret.isNotEmpty;
    bool hasUserID = userID.isNotEmpty;

    if ((hasApiKey && !hasApiSecret) ||
        (hasApiSecret && !hasApiKey) ||
        (hasUserID && (hasApiKey ^ hasApiSecret))) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text(
                'Please enter both API Key and Secret if either is used.')),
      );
      return;
    }
    setState(() {
      loading = true;
    });
    await Tyrads.instance.initializationWait.future;

    await initializeTyrads(
      apiKey: apiKeyController.text.isEmpty ? null : apiKeyController.text,
      apiSecret:
          apiSecretController.text.isEmpty ? null : apiSecretController.text,
      encKey: encKeyController.text.isEmpty ? null : encKeyController.text,
      userID: userIDController.text.isEmpty ? null : userIDController.text,
    );

    Tyrads.instance.setCallback(TyradsCallbackType.campaignDetail, (data) {
      debugPrint("TyradsCallbackType.campaignDetail: $data");
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
    setState(() {
      loading = false;
    });

    Tyrads.instance.showOffers(
      context,
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Tyrads.instance.topOffersWidget(
                  context,
                  widgetStyle: style == 1
                      ? PremiumWidgetStyles.list
                      : PremiumWidgetStyles.sliderCards,
                ),
                const SizedBox(
                  height: 16,
                ),
                DropdownButton(
                  value: style,
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text("List View"),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text("Slide Cards"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      style = value ?? 1;
                    });
                  },
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                      controller: apiKeyController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Api_Key (Optional)",
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: TextField(
                      controller: apiSecretController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Api_Secret (Optional)",
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: TextField(
                      controller: encKeyController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Encryption Key (Optional)",
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: TextField(
                      controller: userIDController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Custom user Id or empty for anonymous user",
                      )),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: loading ? null : _showOfferwall,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children: [
                      if (loading)
                        const SizedBox(
                            height: 22,
                            width: 22,
                            child: CircularProgressIndicator()),
                      const Text("Show offerwall"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
