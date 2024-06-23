import 'package:flutter/material.dart';
import 'package:myproject/Presentation/widgets/custom_Images.dart';
import 'package:myproject/Presentation/widgets/custom_appbar.dart';
import 'package:myproject/Presentation/widgets/custom_button.dart';
import 'package:myproject/Presentation/widgets/custom_textformfield.dart';
import 'package:myproject/Presentation/widgets/custom_title.dart';
import 'package:myproject/Presentation/widgets/different_Size_TextField.dart';
import 'package:myproject/Presentation/widgets/products.dart';

class AddTipPage extends StatelessWidget {
  AddTipPage({super.key});
  final List<String> list = [
    "Groceries",
    "Dairy Products",
    "Meat Products",
    "+",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
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
                  title: "Add Tip",
                  subTitle: "Add Stroage Tips",
                ),
              ),
              Positioned(
                top: 170,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              return Products(text: list[index]);
                            }),
                      ),
                      const CustomTextFormField(text: "Name"),
                      const DifferentSizeTextForm(
                          text: "Details", contentPaddingSize: 80),
                      const CustomButton(text: "Procced")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
