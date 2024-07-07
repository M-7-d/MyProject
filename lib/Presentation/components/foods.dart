import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myproject/Application/RefrigeratorItem_Serive.dart';
import 'package:myproject/Presentation/widgets/custom_Images.dart';
import 'package:myproject/Presentation/widgets/food_Item.dart';

class Foods extends ConsumerWidget {
  const Foods({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final refrigeratorItems = ref.watch(refrigeratorItemsProvider);

    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: refrigeratorItems.length,
        itemBuilder: (context, index) {
          final item = refrigeratorItems[index];
          return FoodItem(
              image: item.name == "Tomato"
                  ? CustomImages.tomato
                  : CustomImages.potato,
              title: item.name,
              days: item.expirationDate,
              weight: item.quantity);
        },
      ),
    );
  }
}
