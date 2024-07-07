import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myproject/Presentation/widgets/custom_button.dart';
import 'package:myproject/Presentation/widgets/custom_textformfield.dart';
import 'package:myproject/Presentation/widgets/different_Size_TextField.dart';
import 'package:myproject/test2.dart';
import '../widgets/custom_textFields.dart';

class TextForms extends ConsumerWidget {
  const TextForms({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(itemsProvider.notifier);

    return Column(
      children: [
        CustomtextFields(
            onChanged1: (value) {
              controller.updatePurchaseDate(value);
            },
            onChanged2: (value) {
              controller.updateExpirationDate(value);
            },
            text1: "Purchase Date",
            text2: "Expiration Date"),
        const SizedBox(height: 15),
        CustomtextFields(
            onChanged1: (value) {
              controller.updateQuantity(value);
            },
            onChanged2: (value) {
              controller.updateUnit(value);
            },
            text1: "Quantity",
            text2: "Unit"),
        const SizedBox(
          height: 10,
        ),
        CustomTextFormField(
            onChanged: (value) {
              controller.updateMarketName(value);
            },
            text: "Market Name"),
        DifferentSizeTextForm(
            onChanged: (value) {
              controller.updateNotes(value);
            },
            text: "Notes...",
            contentPaddingSize: 60),
        const CustomButton(text: "Procced"),
      ],
    );
  }
}
