import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/i18n/translations.g.dart';
import 'package:tyrads_sdk/tyrads_sdk.dart';
import '../../../core/components/appbar.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  final Map<String, String> languages = {
    'en': 'English',
    'es': 'Spanish',
    'id': 'Indonesian',
    'ja': 'Japanese',
    'ko': 'Korean',
    'device': 'Device Default',
  };

  @override
  Widget build(BuildContext context) {
    String currentLanguage = Tyrads.instance.selectedLanguage;

    return Scaffold(
      appBar: AcmoAppBar(
        titleText: t.language,
      ),
      body: ListView.separated(
        itemCount: languages.length,
        separatorBuilder: (context, index) => const Divider(height: 1, color: Color(0xFFE0E0E0)),
        itemBuilder: (context, index) {
          String langCode = languages.keys.elementAt(index);
          String langName = languages.values.elementAt(index);

          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 30),
            title: Row(
              children: [
                Text(
                  langName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8),
                if (langCode == currentLanguage)
                  const Icon(Icons.check, color: Colors.black, size: 20),
              ],
            ),
            trailing: null,
            onTap: () async {
              Tyrads.instance.changeLanguage(langCode);
              setState(() {});
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}