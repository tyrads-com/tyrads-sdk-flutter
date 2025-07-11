import 'dart:io';

import 'package:flutter/material.dart';

class AcmoImageViewer extends StatelessWidget {
  const AcmoImageViewer({
    super.key,
    required this.imageFile,
  });

  final File imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Viewer'),
      ),
      body: Center(
        child: Image.file(File(imageFile.path)),
      ),
    );
  }
}
