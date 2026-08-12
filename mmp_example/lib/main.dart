import 'dart:developer';

import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_attribution.dart';
import 'package:adjust_sdk/adjust_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mmp_example/env/env.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import 'dart:io';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';

// ─────────────────────────────────────────────────────────────
//  MMP Provider selection
// ─────────────────────────────────────────────────────────────

/// Which MMP the client app is using. Stored in SharedPreferences so it
/// survives hot-restarts during development.
enum SelectedMMP { none, appsflyer, adjust }

const String _kMMPPrefKey = 'selected_mmp';

SelectedMMP _selectedMMP = SelectedMMP.none;

// ─────────────────────────────────────────────────────────────
//  MMP credentials — replace with your real keys
// ─────────────────────────────────────────────────────────────

// AppsFlyer
const String _appsFlyerDevKey = 'nZkFdRvkLGcaFLtxyov4Q3';
const String _appleAppId = '6753666051'; // iOS only

// Adjust — replace with your real Adjust App Token from the Adjust dashboard
const String _adjustAppToken = 'gahm2uu2wcg0'; // Using the 'ABC' app token as an example

// ─────────────────────────────────────────────────────────────
//  App entry point
// ─────────────────────────────────────────────────────────────

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the last-used MMP selection
  final prefs = await SharedPreferences.getInstance();
  final savedMMP = prefs.getString(_kMMPPrefKey);
  _selectedMMP = _mmpFromString(savedMMP);

  // Initialize the chosen MMP BEFORE TyrAds so attribution data is ready
  await _initMMP(_selectedMMP);

  await initializeTyrads();
  runApp(const MyApp());
}

// ─────────────────────────────────────────────────────────────
//  MMP initialisation — single entry point
// ─────────────────────────────────────────────────────────────

AppsflyerSdk? _appsflyerSdk;

/// Initializes the MMP selected by the client. Call this whenever the
/// selection changes. Only one MMP runs at a time.
Future<void> _initMMP(SelectedMMP mmp) async {
  switch (mmp) {
    case SelectedMMP.appsflyer:
      await _initAppsFlyer();
      break;
    case SelectedMMP.adjust:
      _initAdjust();
      break;
    case SelectedMMP.none:
      debugPrint('[MMP] No MMP selected.');
      break;
  }
}

// ── AppsFlyer ────────────────────────────────────────────────

Future<void> _initAppsFlyer() async {
  final options = AppsFlyerOptions(
    afDevKey: _appsFlyerDevKey,
    appId: _appleAppId,
    showDebug: true,
    timeToWaitForATTUserAuthorization: 50.0,
  );

  _appsflyerSdk = AppsflyerSdk(options);

  _appsflyerSdk!.onInstallConversionData((dynamic response) {
    debugPrint('[AppsFlyer] Raw conversion response: $response');
    if (response is Map && response['status'] == 'success') {
      final rawData = Map<String, dynamic>.from(response['payload'] as Map);
      debugPrint('[AppsFlyer] Attribution payload: $rawData');
      Tyrads.instance.updateMediaSourceFromMMP(
        provider: MMPProvider.appsflyer,
        rawData: rawData,
      );
      debugPrint('[AppsFlyer] ✅ Media source info updated in TyrAds.');
    } else {
      debugPrint('[AppsFlyer] ⚠️ Conversion failed or non-success: $response');
    }
  });

  await _appsflyerSdk!
      .initSdk(
        registerConversionDataCallback: true,
        registerOnAppOpenAttributionCallback: false,
        registerOnDeepLinkingCallback: false,
      )
      .then((value) => debugPrint('[AppsFlyer] SDK initialized: $value'))
      .catchError((e) => debugPrint('[AppsFlyer] SDK error: $e'));
}

// ── Adjust ───────────────────────────────────────────────────

void _initAdjust() {
  final environment = kDebugMode
      ? AdjustEnvironment.sandbox
      : AdjustEnvironment.production;

  final config = AdjustConfig(_adjustAppToken, environment);
  config.logLevel = AdjustLogLevel.verbose;

  // Attribution callback — fires on install & re-attribution
  config.attributionCallback = (AdjustAttribution attribution) {
    debugPrint('[Adjust] Attribution received: $attribution');

    // Map Adjust attribution fields to a plain Map for TyrAds
    final rawData = <String, dynamic>{
      'network': attribution.network,
      'campaign': attribution.campaign,
      'adgroup': attribution.adgroup,
      'creative': attribution.creative,
      'click_label': attribution.clickLabel,
      'tracker_name': attribution.trackerName,
      'tracker_token': attribution.trackerToken,
    };

    Tyrads.instance.updateMediaSourceFromMMP(
      provider: MMPProvider.adjust,
      rawData: rawData,
    );
    debugPrint('[Adjust] ✅ Media source info updated in TyrAds.');
  };

  Adjust.initSdk(config);
  debugPrint('[Adjust] SDK initialized (${environment.name}).');
}

// ─────────────────────────────────────────────────────────────
//  TyrAds initialisation
// ─────────────────────────────────────────────────────────────

bool _isTyradsInitialized = false;
const String _defaultUserId = 'acmo_user_01';
final GlobalKey<NavigatorState> hostNavKey = GlobalKey<NavigatorState>();

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
          ? {
              'apiKey': Env.ANDROID_TYRREWARD_SDK_KEY,
              'apiSecret': Env.ANDROID_TYRREWARD_SDK_SECRET,
              'encKey': Env.ANDROID_TYRREWARD_SDK_ENC_KEY
            }
          : {
              'apiKey': Env.IOS_TYRREWARD_SDK_KEY,
              'apiSecret': Env.IOS_TYRREWARD_SDK_SECRET,
              'encKey': Env.IOS_TYRREWARD_SDK_ENC_KEY
            };
    case 'belanda2':
      return isAndroid
          ? {
              'apiKey': Env.ANDROID_BELANDA2_TYRADS_SDK_KEY,
              'apiSecret': Env.ANDROID_BELANDA2_TYRADS_SDK_SECRET,
              'encKey': Env.ANDROID_BELANDA2_TYRADS_SDK_ENC_KEY
            }
          : {
              'apiKey': Env.IOS_BELANDA2_TYRADS_SDK_KEY,
              'apiSecret': Env.IOS_BELANDA2_TYRADS_SDK_SECRET,
              'encKey': Env.IOS_BELANDA2_TYRADS_SDK_ENC_KEY
            };
    case 'belanda3':
      return isAndroid
          ? {
              'apiKey': Env.ANDROID_BELANDA3_TYRADS_SDK_KEY,
              'apiSecret': Env.ANDROID_BELANDA3_TYRADS_SDK_SECRET,
              'encKey': Env.ANDROID_BELANDA3_TYRADS_SDK_ENC_KEY
            }
          : {
              'apiKey': Env.IOS_BELANDA3_TYRADS_SDK_KEY,
              'apiSecret': Env.IOS_BELANDA3_TYRADS_SDK_SECRET,
              'encKey': Env.IOS_BELANDA3_TYRADS_SDK_ENC_KEY
            };
    case 'belanda1':
    default:
      return isAndroid
          ? {
              'apiKey': Env.ANDROID_BELANDA1_TYRADS_SDK_KEY,
              'apiSecret': Env.ANDROID_BELANDA1_TYRADS_SDK_SECRET,
              'encKey': Env.ANDROID_BELANDA1_TYRADS_SDK_ENC_KEY
            }
          : {
              'apiKey': Env.IOS_BELANDA1_TYRADS_SDK_KEY,
              'apiSecret': Env.IOS_BELANDA1_TYRADS_SDK_SECRET,
              'encKey': Env.IOS_BELANDA1_TYRADS_SDK_ENC_KEY
            };
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
String? _previousEngagementId;
String? _previousPlacementId;
String? _previousUserID;
int? _previousAge;
int? _previousGender;
bool? _previousSkipInitialPages;

Future<void> initializeTyrads({
  String? apiKey,
  String? apiSecret,
  String? encKey,
  String? engagementId,
  String? placementId,
  String? userID,
  int? age,
  int? gender,
  bool skipInitialPages = false,
}) async {
  final prefs = await SharedPreferences.getInstance();
  final configKeys =
      _getConfigKeys(prefs.getString('selectedConfig') ?? 'belanda1');
  final finalApiKey =
      (apiKey != null && apiKey.isNotEmpty) ? apiKey : configKeys['apiKey']!;
  final finalApiSecret = (apiSecret != null && apiSecret.isNotEmpty)
      ? apiSecret
      : configKeys['apiSecret']!;
  final finalEncKey =
      (encKey != null && encKey.isNotEmpty) ? encKey : configKeys['encKey']!;
  final finalUserId =
      (userID != null && userID.isNotEmpty) ? userID : await _getUserId();

  if (_isTyradsInitialized &&
      _previousApiKey == finalApiKey &&
      _previousApiSecret == finalApiSecret &&
      _previousEncKey == finalEncKey &&
      _previousEngagementId == engagementId &&
      _previousPlacementId == placementId &&
      _previousUserID == finalUserId &&
      _previousAge == age &&
      _previousGender == gender &&
      _previousSkipInitialPages == skipInitialPages) {
    return;
  }

  log("apiKey: $finalApiKey");
  log("apiSecret: $finalApiSecret");
  log("encKey: $finalEncKey");
  log("engagementId: $engagementId");
  log("placementId: $placementId");
  log("userID: $finalUserId");
  log("age: $age");
  log("gender: $gender");
  log("skipInitialPages: $skipInitialPages");

  await Tyrads.instance.init(
    navigatorKey: hostNavKey,
    apiKey: finalApiKey,
    apiSecret: finalApiSecret,
    encryptionKey: finalEncKey,
    engagementId: engagementId,
    placementId: placementId,
    config: Platform.isAndroid
        ? TyradsConfig(skipInitialPages: skipInitialPages)
        : null,
    userInfo: TyradsUserInfo(
      email: "example@tyrads.com",
      phoneNumber: "001234567890",
      userGroup: "High purchase user",
      age: age,
      gender: gender,
    ),
  );

  await Tyrads.instance.loginUser(userID: finalUserId);
  await _saveUserId(finalUserId);

  Tyrads.instance.setCallback(TyradsCallbackType.campaignDetail, (data) {
    debugPrint("TyradsCallbackType.campaignDetail: $data");
  });
  Tyrads.instance.setCallback(TyradsCallbackType.campaignActivated, (data) {
    debugPrint("TyradsCallbackType.activated: $data");
  });

  _previousApiKey = finalApiKey;
  _previousApiSecret = finalApiSecret;
  _previousEncKey = finalEncKey;
  _previousEngagementId = engagementId;
  _previousPlacementId = placementId;
  _previousUserID = finalUserId;
  _previousAge = age;
  _previousGender = gender;
  _isTyradsInitialized = true;
  _previousSkipInitialPages = skipInitialPages;

  debugPrint('Tyrads initialized successfully');
}

void clearTyradsCache() {
  _previousApiKey = null;
  _previousApiSecret = null;
  _previousEncKey = null;
  _previousEngagementId = null;
  _previousPlacementId = null;
  _previousUserID = null;
  _previousAge = null;
  _previousGender = null;
  _isTyradsInitialized = false;
}

// ─────────────────────────────────────────────────────────────
//  Helpers
// ─────────────────────────────────────────────────────────────

SelectedMMP _mmpFromString(String? value) {
  switch (value) {
    case 'appsflyer':
      return SelectedMMP.appsflyer;
    case 'adjust':
      return SelectedMMP.adjust;
    default:
      return SelectedMMP.none;
  }
}

String _mmpToString(SelectedMMP mmp) {
  switch (mmp) {
    case SelectedMMP.appsflyer:
      return 'appsflyer';
    case SelectedMMP.adjust:
      return 'adjust';
    case SelectedMMP.none:
      return 'none';
  }
}

String _mmpLabel(SelectedMMP mmp) {
  switch (mmp) {
    case SelectedMMP.appsflyer:
      return 'AppsFlyer';
    case SelectedMMP.adjust:
      return 'Adjust';
    case SelectedMMP.none:
      return 'None';
  }
}

// ─────────────────────────────────────────────────────────────
//  App
// ─────────────────────────────────────────────────────────────

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: hostNavKey,
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
  late TextEditingController placementIdController;
  late TextEditingController userIDController;
  bool loading = false;
  int style = 1;
  int initialPageMode = 1;
  String selectedConfig = 'belanda1';
  int? selectedAge;
  int? selectedGender;
  SelectedMMP selectedMMPProvider = _selectedMMP;

  int widgetKey = 0;
  bool isReady = false;

  @override
  void initState() {
    super.initState();
    apiKeyController = TextEditingController();
    apiSecretController = TextEditingController();
    encKeyController = TextEditingController();
    engagementIdController = TextEditingController();
    placementIdController = TextEditingController();
    userIDController = TextEditingController();

    _loadStoredCredentials();
  }

  Future<void> _loadStoredCredentials() async {
    final prefs = await SharedPreferences.getInstance();

    final storedConfig = prefs.getString('selectedConfig');
    final configToUse = storedConfig ?? selectedConfig;
    if (storedConfig != null && storedConfig != selectedConfig) {
      setState(() {
        selectedConfig = storedConfig;
      });
    }

    final configKeys = _getConfigKeys(configToUse);
    final userId = prefs.getString('tyrads_user_id') ?? _defaultUserId;

    setState(() {
      apiKeyController.text = configKeys['apiKey']!;
      apiSecretController.text = configKeys['apiSecret']!;
      encKeyController.text = configKeys['encKey']!;
      userIDController.text = userId;
      isReady = true;
    });
  }

  Future<void> _onConfigChange(String value) async {
    final newKeys = _getConfigKeys(value);
    setState(() {
      selectedConfig = value;
      apiKeyController.text = newKeys['apiKey']!;
      apiSecretController.text = newKeys['apiSecret']!;
      encKeyController.text = newKeys['encKey']!;
      isReady = false;
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedConfig', value);

    clearTyradsCache();
    await initializeTyrads(
      apiKey: newKeys['apiKey']!,
      apiSecret: newKeys['apiSecret']!,
      encKey: newKeys['encKey']!,
    );

    setState(() {
      widgetKey++;
      isReady = true;
    });
  }

  /// Called when the client switches MMP provider from the dropdown.
  Future<void> _onMMPChange(SelectedMMP? mmp) async {
    if (mmp == null || mmp == selectedMMPProvider) return;

    setState(() {
      selectedMMPProvider = mmp;
      _selectedMMP = mmp;
    });

    // Persist selection
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kMMPPrefKey, _mmpToString(mmp));

    // Re-initialize MMP
    await _initMMP(mmp);

    // Show a snack so the developer knows it switched
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('MMP switched to ${_mmpLabel(mmp)}'),
          duration: const Duration(seconds: 2),
        ),
      );
    }
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
      placementId: placementIdController.text,
      userID: userIDController.text,
      age: selectedAge,
      gender: selectedGender,
      skipInitialPages: initialPageMode == 2,
    );

    setState(() {
      loading = false;
    });

    Tyrads.instance.showOffers();
  }

  @override
  void dispose() {
    super.dispose();
    apiKeyController.dispose();
    apiSecretController.dispose();
    encKeyController.dispose();
    engagementIdController.dispose();
    placementIdController.dispose();
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

                // ── Tyrads Widget ───────────────────────────────────
                if (isReady)
                  KeyedSubtree(
                    key: ValueKey(widgetKey),
                    child: PremiumOffersWidget(
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
                              value: 1, child: Text("Show Initial Pages")),
                          DropdownMenuItem(
                              value: 2, child: Text("Hide Initial Pages")),
                        ],
                        onChanged: (value) async {
                          setState(() {
                            initialPageMode = value ?? 1;
                          });
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
                            age: selectedAge,
                            gender: selectedGender,
                            skipInitialPages: initialPageMode == 2,
                          );
                          setState(() {
                            widgetKey++;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // ── MMP Provider Selector ───────────────────────────
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Select MMP Provider:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF333333),
                        ),
                      ),
                      const SizedBox(height: 5),
                      ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButtonFormField<SelectedMMP>(
                          value: selectedMMPProvider,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          items: SelectedMMP.values.map((mmp) {
                            return DropdownMenuItem<SelectedMMP>(
                              value: mmp,
                              child: Text(
                                _mmpLabel(mmp),
                                style: const TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          onChanged: _onMMPChange,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Active MMP: ${_mmpLabel(selectedMMPProvider)}',
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
                          initialValue: selectedConfig,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          items: configOptions.map((option) {
                            return DropdownMenuItem<String>(
                              value: option['value'],
                              child: Text(option['label']!,
                                  style:
                                      const TextStyle(color: Colors.black)),
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
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        initialValue: selectedAge,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Age',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                        ),
                        items:
                            List.generate(83, (index) => index + 18).map((age) {
                          return DropdownMenuItem(
                            value: age,
                            child: Text(age.toString()),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedAge = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: DropdownButtonFormField<int>(
                        initialValue: selectedGender,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Gender',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                        ),
                        items: const [
                          DropdownMenuItem(value: 1, child: Text("Male")),
                          DropdownMenuItem(value: 2, child: Text("Female")),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                    ),
                  ],
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
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: engagementIdController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Engagement Id (Optional)",
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: placementIdController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Placement Id (Optional)",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: TextField(
                    controller: userIDController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText:
                          "Custom user Id or empty for anonymous user",
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
                        const SizedBox(
                            height: 22,
                            width: 22,
                            child: CircularProgressIndicator()),
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
