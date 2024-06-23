import 'package:flutter/material.dart';
import 'package:myproject/Presentation/widgets/custom_Images.dart';
import 'package:myproject/Presentation/widgets/food_Item.dart';

class Foods extends StatelessWidget {
  const Foods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FoodItem(
            image: CustomImages.potato,
            title: "Potato",
            days: "1 Day",
            weight: 0.25),
        FoodItem(
            image: CustomImages.tomato,
            title: "Tomato",
            days: "10 Day",
            weight: 2)
      ],
    );
  }
}
