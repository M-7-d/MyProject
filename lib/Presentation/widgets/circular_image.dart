import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String image;
  const CircularImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Image.asset(image));
  }
}
