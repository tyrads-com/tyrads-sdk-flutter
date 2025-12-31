// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:example/env/env.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeTyrads();
  runApp(const MyApp());
}

bool _isTyradsInitialized = false;
String? _previousApiKey;
String? _previousApiSecret;
String? _previousEncKey;
String? _previousUserID;

Future<void> initializeTyrads({
  String? apiKey,
  String? apiSecret,
  String? encKey,
  String? engagementId,
  String? userID,
  bool skipInitialPages = false,
}) async {
  if (_isTyradsInitialized &&
      _previousApiKey == apiKey &&
      _previousApiSecret == apiSecret &&
      _previousEncKey == encKey &&
      _previousUserID == userID) {
    log("Tyrads already initialized with same details, skipping reinitialization");
    return;
  }
  log("initializeTyrads $apiKey,  $apiSecret,  $userID");
  debugPrint("skipInitialPages config value: $skipInitialPages");
  await Tyrads.instance.init(
    apiKey: apiKey ??
        (defaultTargetPlatform == TargetPlatform.iOS
            ? Env.TYRADS_SDK_IOS_KEY
            : Env.TYRADS_SDK_KEY),
    apiSecret: apiSecret ??
        (defaultTargetPlatform == TargetPlatform.iOS
            ? Env.TYRADS_SDK_IOS_SECRET
            : Env.TYRADS_SDK_SECRET),
    encryptionKey: encKey ??
        (defaultTargetPlatform == TargetPlatform.iOS
            ? Env.TYRADS_SDK_IOS_ENC_KEY
            : Env.TYRADS_SDK_ENC_KEY),
    engagementId: engagementId,
    config: TyradsConfig(skipInitialPages: skipInitialPages),
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
  await Tyrads.instance.loginUser(userID: userID ?? "acmoUser_34233");
  Tyrads.instance.setCallback(TyradsCallbackType.campaignDetail, (data) {
    debugPrint("TyradsCallbackType.campaignDetail: $data");
  });
  Tyrads.instance.setCallback(TyradsCallbackType.campaignActivated, (data) {
    debugPrint("TyradsCallbackType.activated: $data");
  });

  _previousApiKey = apiKey;
  _previousApiSecret = apiSecret;
  _previousEncKey = encKey;
  _previousUserID = userID;
  _isTyradsInitialized = true;

  log("Tyrads initialized successfully with new details");
}

void clearTyradsCache() {
  _previousApiKey = null;
  _previousApiSecret = null;
  _previousEncKey = null;
  _previousUserID = null;
  _isTyradsInitialized = false;
  log("Tyrads cache cleared");
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
  late TextEditingController engagementIdController;
  late TextEditingController userIDController;
  bool loading = false;
  int style = 1;
  int initialPageMode = 1; // 1: Show Initial Pages, 2: Hide Initial Pages
  @override
  void initState() {
    super.initState();
    apiKeyController = TextEditingController();
    apiSecretController = TextEditingController();
    encKeyController = TextEditingController();
    engagementIdController = TextEditingController();
    userIDController = TextEditingController();

    // Set default values
    apiKeyController.text = "0a55de10c58f459c9f65988d9d33e774";
    apiSecretController.text =
        "418fc08c18a6715b48428568946e6f82f0ff06bfbc017944d22a19b3317a5ce2ad7028b0599a149534d957017d54650a9fa355cebf6971d7fdbc3eca372ca4ed";
    encKeyController.text = "VKdZsSz9&3WQqA6xfBJ4G2!5cUe8Y7yP";
  }

  @override
  void dispose() {
    super.dispose();
    apiKeyController.dispose();
    apiSecretController.dispose();
    encKeyController.dispose();
    engagementIdController.dispose();
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
      engagementId: engagementIdController.text.isEmpty
          ? null
          : engagementIdController.text,
      userID: userIDController.text.isEmpty ? null : userIDController.text,
      skipInitialPages: initialPageMode == 1,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                    DropdownButton(
                      value: initialPageMode,
                      items: const [
                        DropdownMenuItem(
                          value: 1,
                          child: Text("Show Initial Pages"),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Text("Hide Initial Pages"),
                        ),
                      ],
                      onChanged: (value) async {
                        setState(() {
                          initialPageMode = value ?? 1;
                        });
                        // Reinitialize SDK when selection changes
                        await initializeTyrads(
                          apiKey: apiKeyController.text.isEmpty
                              ? null
                              : apiKeyController.text,
                          apiSecret: apiSecretController.text.isEmpty
                              ? null
                              : apiSecretController.text,
                          encKey: encKeyController.text.isEmpty
                              ? null
                              : encKeyController.text,
                          engagementId: engagementIdController.text.isEmpty
                              ? null
                              : engagementIdController.text,
                          userID: userIDController.text.isEmpty
                              ? null
                              : userIDController.text,
                          skipInitialPages: initialPageMode == 1,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                      controller: apiKeyController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Api_Key (Optional)",
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                      controller: apiSecretController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Api_Secret (Optional)",
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                      controller: encKeyController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Encryption Key (Optional)",
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                      controller: engagementIdController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Engagement Id (Optional)",
                      )),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
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
