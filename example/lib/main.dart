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

const List<Map<String, String>> configOptions = [
  {'label': 'Tyrreward', 'value': 'tyrreward'},
  {'label': 'Belanda 1', 'value': 'belanda1'},
  {'label': 'Belanda 2', 'value': 'belanda2'},
  {'label': 'Belanda 3', 'value': 'belanda3'},
];

Map<String, String> _getConfigKeys(String selectedConfig) {
  final isAndroid = defaultTargetPlatform == TargetPlatform.android;

  switch (selectedConfig) {
    case 'tyrreward':
      return isAndroid
          ? {'apiKey': Env.ANDROID_TYRREWARD_SDK_KEY,       'apiSecret': Env.ANDROID_TYRREWARD_SDK_SECRET,       'encKey': Env.ANDROID_TYRREWARD_SDK_ENC_KEY}
          : {'apiKey': Env.IOS_TYRREWARD_SDK_KEY,           'apiSecret': Env.IOS_TYRREWARD_SDK_SECRET,           'encKey': Env.IOS_TYRREWARD_SDK_ENC_KEY};
    case 'belanda2':
      return isAndroid
          ? {'apiKey': Env.ANDROID_BELANDA2_TYRADS_SDK_KEY, 'apiSecret': Env.ANDROID_BELANDA2_TYRADS_SDK_SECRET, 'encKey': Env.ANDROID_BELANDA2_TYRADS_SDK_ENC_KEY}
          : {'apiKey': Env.IOS_BELANDA2_TYRADS_SDK_KEY,     'apiSecret': Env.IOS_BELANDA2_TYRADS_SDK_SECRET,     'encKey': Env.IOS_BELANDA2_TYRADS_SDK_ENC_KEY};
    case 'belanda3':
      return isAndroid
          ? {'apiKey': Env.ANDROID_BELANDA3_TYRADS_SDK_KEY, 'apiSecret': Env.ANDROID_BELANDA3_TYRADS_SDK_SECRET, 'encKey': Env.ANDROID_BELANDA3_TYRADS_SDK_ENC_KEY}
          : {'apiKey': Env.IOS_BELANDA3_TYRADS_SDK_KEY,     'apiSecret': Env.IOS_BELANDA3_TYRADS_SDK_SECRET,     'encKey': Env.IOS_BELANDA3_TYRADS_SDK_ENC_KEY};
    case 'belanda1':
    default:
      return isAndroid
          ? {'apiKey': Env.ANDROID_BELANDA1_TYRADS_SDK_KEY, 'apiSecret': Env.ANDROID_BELANDA1_TYRADS_SDK_SECRET, 'encKey': Env.ANDROID_BELANDA1_TYRADS_SDK_ENC_KEY}
          : {'apiKey': Env.IOS_BELANDA1_TYRADS_SDK_KEY,     'apiSecret': Env.IOS_BELANDA1_TYRADS_SDK_SECRET,     'encKey': Env.IOS_BELANDA1_TYRADS_SDK_ENC_KEY};
  }
}

Future<String> _getUserId() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('tyrads_user_id') ?? _defaultUserId;
}

Future<void> _saveUserId(String userId) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('tyrads_user_id', userId);
}

String? _previousApiKey;
String? _previousApiSecret;
String? _previousEncKey;
String? _previousUserID;
bool?   _previousSkipInitialPages;

Future<void> initializeTyrads({
  String selectedConfig = 'belanda1',
  String? apiKey,
  String? apiSecret,
  String? encKey,
  String? engagementId,
  String? userID,
  bool skipInitialPages = false,
}) async {
  final configKeys  = _getConfigKeys(selectedConfig);
  final finalApiKey    = (apiKey    != null && apiKey.isNotEmpty)    ? apiKey    : configKeys['apiKey']!;
  final finalApiSecret = (apiSecret != null && apiSecret.isNotEmpty) ? apiSecret : configKeys['apiSecret']!;
  final finalEncKey    = (encKey    != null && encKey.isNotEmpty)    ? encKey    : configKeys['encKey']!;
  final finalUserId    = (userID    != null && userID.isNotEmpty)    ? userID    : await _getUserId();

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
  await _saveUserId(finalUserId); // only userId is persisted — keys always come from Env

  Tyrads.instance.setCallback(TyradsCallbackType.campaignDetail, (data) {
    debugPrint("TyradsCallbackType.campaignDetail: $data");
  });
  Tyrads.instance.setCallback(TyradsCallbackType.campaignActivated, (data) {
    debugPrint("TyradsCallbackType.activated: $data");
  });

  _previousApiKey           = finalApiKey;
  _previousApiSecret        = finalApiSecret;
  _previousEncKey           = finalEncKey;
  _previousUserID           = finalUserId;
  _isTyradsInitialized      = true;
  _previousSkipInitialPages = skipInitialPages;

  debugPrint('Tyrads initialized successfully');
}

void clearTyradsCache() {
  _previousApiKey      = null;
  _previousApiSecret   = null;
  _previousEncKey      = null;
  _previousUserID      = null;
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
  String selectedConfig = 'belanda1';

  int widgetKey = 0;
  bool isReady = false;

  @override
  void initState() {
    super.initState();
    apiKeyController       = TextEditingController();
    apiSecretController    = TextEditingController();
    encKeyController       = TextEditingController();
    engagementIdController = TextEditingController();
    userIDController       = TextEditingController();

    _loadStoredCredentials();
  }

  Future<void> _loadStoredCredentials() async {
    final prefs = await SharedPreferences.getInstance();

    final storedConfig = prefs.getString('selectedConfig');
    final configToUse = storedConfig ?? selectedConfig;
    if (storedConfig != null && storedConfig != selectedConfig) {
      setState(() { selectedConfig = storedConfig; });
    }

    final configKeys = _getConfigKeys(configToUse);
    final userId = prefs.getString('tyrads_user_id') ?? _defaultUserId;

    setState(() {
      apiKeyController.text    = configKeys['apiKey']!;
      apiSecretController.text = configKeys['apiSecret']!;
      encKeyController.text    = configKeys['encKey']!;
      userIDController.text    = userId;
      isReady                  = true;
    });
  }

  Future<void> _onConfigChange(String value) async {
    final newKeys = _getConfigKeys(value);
    setState(() {
      selectedConfig           = value;
      apiKeyController.text    = newKeys['apiKey']!;
      apiSecretController.text = newKeys['apiSecret']!;
      encKeyController.text    = newKeys['encKey']!;
      isReady                  = false;
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedConfig', value);

    clearTyradsCache();
    await initializeTyrads(selectedConfig: value);

    setState(() {
      widgetKey++;
      isReady = true;
    });
  }

  void _showOfferwall() async {
    final apiKey    = apiKeyController.text.trim();
    final apiSecret = apiSecretController.text.trim();
    final userID    = userIDController.text.trim();

    bool hasApiKey    = apiKey.isNotEmpty;
    bool hasApiSecret = apiSecret.isNotEmpty;
    bool hasUserID    = userID.isNotEmpty;

    if ((hasApiKey && !hasApiSecret) ||
        (hasApiSecret && !hasApiKey) ||
        (hasUserID && (hasApiKey ^ hasApiSecret))) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter both API Key and Secret if either is used.')),
      );
      return;
    }
    setState(() { loading = true; });
    await Tyrads.instance.initializationWait.future;

    await initializeTyrads(
      selectedConfig:   selectedConfig,
      apiKey:           apiKeyController.text,
      apiSecret:        apiSecretController.text,
      encKey:           encKeyController.text,
      engagementId:     engagementIdController.text,
      userID:           userIDController.text,
      skipInitialPages: initialPageMode == 2,
    );

    setState(() { loading = false; });

    Tyrads.instance.showOffers(context);
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

                if (isReady)
                  KeyedSubtree(
                    key: ValueKey(widgetKey),
                    child: Tyrads.instance.topOffersWidget(
                      context,
                      widgetStyle: style == 1
                          ? PremiumWidgetStyles.list
                          : PremiumWidgetStyles.sliderCards,
                    ),
                  )
                else
                  Container(
                    width: double.maxFinite,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: Platform.isAndroid
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.center,
                  children: [
                    DropdownButton(
                      value: style,
                      items: const [
                        DropdownMenuItem(value: 1, child: Text("List View")),
                        DropdownMenuItem(value: 2, child: Text("Slide Cards")),
                      ],
                      onChanged: (value) {
                        setState(() { style = value ?? 1; });
                      },
                    ),
                    Visibility(
                      visible: Platform.isAndroid,
                      child: DropdownButton(
                        value: initialPageMode,
                        items: const [
                          DropdownMenuItem(value: 1, child: Text("Show Initial Pages")),
                          DropdownMenuItem(value: 2, child: Text("Hide Initial Pages")),
                        ],
                        onChanged: (value) async {
                          setState(() { initialPageMode = value ?? 1; });
                          await initializeTyrads(
                            selectedConfig:   selectedConfig,
                            apiKey:           apiKeyController.text.isEmpty       ? null : apiKeyController.text,
                            apiSecret:        apiSecretController.text.isEmpty    ? null : apiSecretController.text,
                            encKey:           encKeyController.text.isEmpty       ? null : encKeyController.text,
                            engagementId:     engagementIdController.text.isEmpty ? null : engagementIdController.text,
                            userID:           userIDController.text.isEmpty       ? null : userIDController.text,
                            skipInitialPages: initialPageMode == 2,
                          );
                          setState(() { widgetKey++; });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Select Config:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF333333),
                        ),
                      ),
                      const SizedBox(height: 5),
                      ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButtonFormField<String>(
                          value: selectedConfig,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          items: configOptions.map((option) {
                            return DropdownMenuItem<String>(
                              value: option['value'],
                              child: Text(option['label']!, style: const TextStyle(color: Colors.black)),
                            );
                          }).toList(),
                          onChanged: (value) {
                            if (value != null) _onConfigChange(value);
                          },
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Platform: ${Platform.isAndroid ? 'Android' : 'iOS'} | Config: ${selectedConfig.toUpperCase()}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF666666),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                    controller: apiKeyController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Api_Key (Optional)",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                    controller: apiSecretController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Api_Secret (Optional)",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                    controller: encKeyController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Encryption Key (Optional)",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                    controller: engagementIdController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Engagement Id (Optional)",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                    controller: userIDController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Custom user Id or empty for anonymous user",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: loading ? null : _showOfferwall,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children: [
                      if (loading)
                        const SizedBox(height: 22, width: 22, child: CircularProgressIndicator()),
                      const Text("Show offerwall"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}