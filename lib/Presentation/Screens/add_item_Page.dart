import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myproject/Presentation/components/text_forms.dart';
import 'package:myproject/Presentation/widgets/circular_image.dart';
import 'package:myproject/Presentation/widgets/custom_Images.dart';
import 'package:myproject/Presentation/widgets/custom_textformfield.dart';
import 'package:myproject/Presentation/widgets/custom_title.dart';
import 'package:myproject/Presentation/widgets/products.dart';
import 'package:myproject/test2.dart';
import '../widgets/custom_appbar.dart';

class AddItemsPage extends ConsumerWidget {
  AddItemsPage({super.key});

  final List<String> list = [
    "Groceries",
    "Dairy Products",
    "Meat Products",
    "All",
    "+",
    "more"
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final controller = ref.read(itemsProvider.notifier);

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          child: Form(
            key: controller.formKey,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    CustomImages.page,
                    fit: BoxFit.cover,
                  ),
                ),
                const CustomAppBar(
                  image: CustomImages.logo,
                  icon: Icon(Icons.notifications_none),
                ),
                const Positioned(
                  top: 120,
                  left: 0,
                  right: 0,
                  child: CustomTitle(
                    title: "Add New Item",
                    subTitle: "Add item to your refrigerator",
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return Products(text: list[index]);
                          }),
                    ),
                  ),
                ),
                Positioned(
                  top: 260,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircularImage(image: CustomImages.tomato),
                            const SizedBox(width: 10),
                            Expanded(
                                child: CustomTextFormField(
                                    onChanged: (value) {
                                      controller.updateName(value);
                                    },
                                    text: "Name"))
                          ],
                        ),
                        const SizedBox(height: 15),
                        const TextForms()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
