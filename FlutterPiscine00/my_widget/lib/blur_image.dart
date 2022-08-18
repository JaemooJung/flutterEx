import 'dart:io';

import 'package:flutter/material.dart';

class BlurImage extends StatelessWidget {
  const BlurImage({
    Key? key,
    required this.imageUrl,

  }) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.transparent,
            Colors.transparent,
            Colors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.0,
            0.5,
            0.5,
            1.0,
          ],
        ),
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}