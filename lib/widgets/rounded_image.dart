import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final maxRadius;
  final width;
  final height;
  final path;

  const RoundedImage({
    required this.maxRadius,
    required this.width,
    required this.height,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(27.0),
      child: CircleAvatar(
        maxRadius: maxRadius,
        child: Image.asset(
          path,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
