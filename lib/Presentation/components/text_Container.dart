import 'package:flutter/material.dart';
import 'package:myproject/Presentation/widgets/custom_text_container.dart';

class TextContainers extends StatelessWidget {
  const TextContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CustomTextContainer(
                title: "Tomato",
                subTitle:
                    "Levy recomends Storing ripe tomatoes upside down(stem-side down) on paper towels in an open container such as.... "),
            SizedBox(height: 15),
            CustomTextContainer(
                title: "Potato",
                subTitle:
                    "As a rule thumb, the best place to store potatoes is in a cool, dry area of your kitchen ,with good ventilation and out...")
          ],
        ));
  }
}
