import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String image;
  final Icon icon;
  const CustomAppBar({super.key, required this.image, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 90,
              height: 90,
              child: Image(fit: BoxFit.cover, image: AssetImage(image))),
          IconButton(
            onPressed: () {},
            icon: icon,
            style: const ButtonStyle(iconSize: MaterialStatePropertyAll(45)),
          )
        ],
      ),
    );
  }
}
