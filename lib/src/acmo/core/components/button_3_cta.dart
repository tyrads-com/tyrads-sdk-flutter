// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class AcmoButton_3_Cta extends StatelessWidget {
  const AcmoButton_3_Cta(
      {Key? key,
      required this.onTap,
      this.label = "Install",
      this.isLoading = false})
      : super(key: key);

  final Function onTap;
  final String label;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!isLoading) onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Theme.of(context).colorScheme.secondary,
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
                label,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
