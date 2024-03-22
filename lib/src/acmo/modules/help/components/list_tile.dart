import 'package:flutter/material.dart';

class AcmoHelpItemComponent extends StatelessWidget {
  const AcmoHelpItemComponent(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);

  final Widget icon;
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        dense: true,
        leading: SizedBox(height:24, child: icon),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right_sharp),
        onTap: onTap,
      ),
    );
  }
}
