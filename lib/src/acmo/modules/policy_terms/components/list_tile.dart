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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: 0.25,
            ),
            blurRadius: 3.5,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.zero,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        leading: SizedBox(height: 18, child: icon),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.2,
          ),
        ),
        trailing: const Icon(Icons.chevron_right, size: 28),
        onTap: onTap,
      ),
    );
  }
}
