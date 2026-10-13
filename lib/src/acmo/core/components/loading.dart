import 'package:flutter/material.dart';

class AcmoComponentLoading extends StatelessWidget {
  const AcmoComponentLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Card(
            child: SizedBox(
                width: 48,
                height: 48,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ))));
  }
}
