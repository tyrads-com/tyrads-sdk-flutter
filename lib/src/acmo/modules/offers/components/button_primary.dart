import 'package:flutter/material.dart';
import 'package:tyrads_sdk/src/app_config.dart';

class AcmoComponentButtonPrimary extends StatelessWidget {
  const AcmoComponentButtonPrimary({
    Key? key,
    this.onTap,
    required this.titleText,
    this.isLoading = false,
  }) : super(key: key);

  final Function()? onTap;
  final String titleText;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll( AcmoConfig.SECONDARY_COLOR)),
              onPressed: onTap,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isLoading)
                      const SizedBox(
                        width: 10,
                        height: 10,
                        child: CircularProgressIndicator(),
                      ),
                    if (isLoading)
                      const SizedBox(
                        width: 10,
                      ),
                    Text(
                      titleText,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.white),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
