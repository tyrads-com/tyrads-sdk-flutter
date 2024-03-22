import 'package:example/env/env.dart';
import 'package:flutter/material.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Tyrads.instance
      .init(apiKey: Env.TYRADS_SDK_KEY, apiSecret: Env.TYRADS_SDK_SECRET);

  await Tyrads.instance.loginUser();
  runApp(const MyApp());
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
  void _showOfferwall() async {
    Tyrads.instance.showOffers(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
                onPressed: _showOfferwall,
                child: const Text("Show offerwall"))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
