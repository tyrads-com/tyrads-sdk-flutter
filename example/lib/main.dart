import 'package:example/env/env.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'dart:io';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeTyrads();
  runApp(const MyApp());
}

bool _isTyradsInitialized = false;
const String _defaultUserId = 'acmo_user_01';

Future<Map<String, String>> _getCredentials() async {
  final prefs = await SharedPreferences.getInstance();

  String apiKey = prefs.getString('tyrads_api_key') ?? '';
  String apiSecret = prefs.getString('tyrads_api_secret') ?? '';
  String encKey = prefs.getString('tyrads_encryption_key') ?? '';
  String userId = prefs.getString('tyrads_user_id') ?? '';

  final isIOS = defaultTargetPlatform == TargetPlatform.iOS;
  if (apiKey.isEmpty) {
    apiKey = isIOS ? Env.TYRADS_SDK_IOS_KEY : Env.TYRADS_SDK_KEY;
  }
  if (apiSecret.isEmpty) {
    apiSecret = isIOS ? Env.TYRADS_SDK_IOS_SECRET : Env.TYRADS_SDK_SECRET;
  }
  if (encKey.isEmpty) {
    encKey = isIOS ? Env.TYRADS_SDK_IOS_ENC_KEY : Env.TYRADS_SDK_ENC_KEY;
  }
  if (userId.isEmpty) {
    userId = _defaultUserId;
  }

  return {
    'apiKey': apiKey,
    'apiSecret': apiSecret,
    'encKey': encKey,
    'userId': userId,
  };
}

Future<void> _saveCredentialsToPrefs({
  required String apiKey,
  required String apiSecret,
  required String encKey,
  required String userId,
}) async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString('tyrads_api_key', apiKey);
  await prefs.setString('tyrads_api_secret', apiSecret);
  await prefs.setString('tyrads_encryption_key', encKey);
  await prefs.setString('tyrads_user_id', userId);
}

String? _previousApiKey;
String? _previousApiSecret;
String? _previousEncKey;
String? _previousUserID;
bool? _previousSkipInitialPages;

Future<void> initializeTyrads({
  String? apiKey,
  String? apiSecret,
  String? encKey,
  String? engagementId,
  String? userID,
  bool skipInitialPages = false,
}) async {
  final credentials = await _getCredentials();
  final finalApiKey = (apiKey != null && apiKey.isNotEmpty)
      ? apiKey
      : credentials['apiKey']!;
  final finalApiSecret = (apiSecret != null && apiSecret.isNotEmpty)
      ? apiSecret
      : credentials['apiSecret']!;
  final finalEncKey = (encKey != null && encKey.isNotEmpty)
      ? encKey
      : credentials['encKey']!;
  final finalUserId = (userID != null && userID.isNotEmpty)
      ? userID
      : credentials['userId'] ?? _defaultUserId;

  if (_isTyradsInitialized &&
      _previousApiKey == finalApiKey &&
      _previousApiSecret == finalApiSecret &&
      _previousEncKey == finalEncKey &&
      _previousUserID == finalUserId &&
      _previousSkipInitialPages == skipInitialPages) {
    return;
  }

  await Tyrads.instance.init(
    apiKey: finalApiKey,
    apiSecret: finalApiSecret,
    encryptionKey: finalEncKey,
    engagementId: engagementId,
    config: Platform.isAndroid
        ? TyradsConfig(skipInitialPages: skipInitialPages)
        : null,
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

  await Tyrads.instance.loginUser(userID: finalUserId);
  await _saveCredentialsToPrefs(
    apiKey: finalApiKey,
    apiSecret: finalApiSecret,
    encKey: finalEncKey,
    userId: finalUserId,
  );

  Tyrads.instance.setCallback(TyradsCallbackType.campaignDetail, (data) {
    debugPrint("TyradsCallbackType.campaignDetail: $data");
  });
  Tyrads.instance.setCallback(TyradsCallbackType.campaignActivated, (data) {
    debugPrint("TyradsCallbackType.activated: $data");
  });

  _previousApiKey = finalApiKey;
  _previousApiSecret = finalApiSecret;
  _previousEncKey = finalEncKey;
  _previousUserID = finalUserId;
  _isTyradsInitialized = true;
  _previousSkipInitialPages = skipInitialPages;

  debugPrint('Tyrads initialized successfully');
}

void clearTyradsCache() async {
  _previousApiKey = null;
  _previousApiSecret = null;
  _previousEncKey = null;
  _previousUserID = null;
  _isTyradsInitialized = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  int initialPageMode = 1;
  @override
  void initState() {
    super.initState();
    apiKeyController = TextEditingController();
    apiSecretController = TextEditingController();
    encKeyController = TextEditingController();
    engagementIdController = TextEditingController();
    userIDController = TextEditingController();

    _loadStoredCredentials();
  }

  Future<void> _loadStoredCredentials() async {
    final credentials = await _getCredentials();
    setState(() {
      apiKeyController.text = credentials['apiKey'] ?? '';
      apiSecretController.text = credentials['apiSecret'] ?? '';
      encKeyController.text = credentials['encKey'] ?? '';
      userIDController.text = credentials['userId'] ?? '';
    });
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
      apiKey: apiKeyController.text,
      apiSecret: apiSecretController.text,
      encKey: encKeyController.text,
      engagementId: engagementIdController.text,
      userID: userIDController.text,
      skipInitialPages: initialPageMode == 2,
    );

    await _loadStoredCredentials();

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
                  mainAxisAlignment: Platform.isAndroid
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.center,
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
                    Visibility(
                      visible: Platform.isAndroid,
                      child: DropdownButton(
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
                            skipInitialPages: initialPageMode == 2,
                          );
                        },
                      ),
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
