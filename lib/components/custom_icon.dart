import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String path;
  final double size;

  const CustomIcon({super.key, required this.path, required this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, height: size, width: size);
  }
}
