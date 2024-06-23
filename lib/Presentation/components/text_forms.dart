import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/Presentation/widgets/custom_button.dart';
import 'package:myproject/Presentation/widgets/custom_textformfield.dart';
import 'package:myproject/Presentation/widgets/different_Size_TextField.dart';
import 'package:myproject/test.dart';
import '../widgets/custom_textFields.dart';

class TextForms extends StatelessWidget {
  const TextForms({super.key});

  @override
  Widget build(BuildContext context) {
    final contoller = Get.put(ItemsController());
    return Column(
      children: [
        CustomtextFields(
            onChanged1: (value) {
              contoller.purchaseDate = value;
            },
            onChanged2: (value) {
              contoller.expirationDate = value;
            },
            text1: "Purchase Date",
            text2: "Expiration Date"),
        const SizedBox(height: 15),
        CustomtextFields(
            onChanged1: (value) {
              contoller.quantity = value;
            },
            onChanged2: (value) {
              contoller.unit = value;
            },
            text1: "Quantity",
            text2: "Unit"),
        const SizedBox(
          height: 10,
        ),
        CustomTextFormField(
            onChanged: (value) {
              contoller.marketName = value;
            },
            text: "Market Name"),
        DifferentSizeTextForm(
            onChanged: (value) {
              contoller.notes = value;
            },
            text: "Notes...",
            contentPaddingSize: 60),
        const CustomButton(text: "Procced"),
      ],
    );
  }
}
