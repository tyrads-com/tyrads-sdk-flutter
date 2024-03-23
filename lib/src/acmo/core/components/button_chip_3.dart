import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/app_config.dart';

class AcmoComponentButtonChip3 extends StatelessWidget {
  const AcmoComponentButtonChip3(
      {Key? key,
      this.outline = false,
      required this.labelText,
      this.onTap,
      this.icon})
      : super(key: key);

  final bool outline;
  final String labelText;
  final Function()? onTap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 24,
        child: RawChip(
          avatar: icon == null
              ? null
              : Icon(
                  icon,
                  size: 16,
                ),
          padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          label: Text(labelText,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AcmoConfig.PRIMARY_COLOR)),
          backgroundColor: outline ? Colors.white : AcmoConfig.PRIMARY_COLOR_LIGHT,
          side: const BorderSide(color: AcmoConfig.PRIMARY_COLOR),
        ),
      ),
    );
  }
}
