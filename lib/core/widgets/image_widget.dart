import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String base64String;

  const ImageWidget({super.key, required this.base64String});

  @override
  Widget build(BuildContext context) {
    Uint8List imageBytes = base64Decode(base64String);

    return Image.memory(
      imageBytes,
      fit: BoxFit.contain,
    );
  }
}
