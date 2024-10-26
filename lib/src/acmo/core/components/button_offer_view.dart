import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class AcmoButtonOfferView extends StatelessWidget {
  const AcmoButtonOfferView(
      {Key? key,
      required this.onTap,
      this.label = "Install",
      this.isLoading = false,
      this.disabledLabel,
      this.isDisabled = false})
      : super(key: key);

  final Function onTap;
  final String label;
  final String? disabledLabel;
  final bool isLoading;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!isLoading && !isDisabled) onTap();
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
              color: isDisabled ? Colors.black38 : Theme.of(context).colorScheme.secondary,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    color: Color.fromRGBO(0, 0, 0, 0.08))
              ]),
          // onPressed: ()=>callback(),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading)
                  const SizedBox(
                    width: 10,
                    height: 10,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                if (isLoading)
                  const SizedBox(
                    width: 10,
                  ),
                Text(
                  isDisabled
                      ? (disabledLabel ?? "Waiting for download")
                      : label,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
                if (isDisabled)
                  const SizedBox(
                    width: 10,
                  ),
                if (isDisabled)
                  Assets.images.padlock.image(height: 16, width: 16)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
