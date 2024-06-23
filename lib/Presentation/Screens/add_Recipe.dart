import 'package:flutter/material.dart';
import 'package:myproject/Presentation/widgets/custom_title.dart';
import 'package:myproject/Presentation/widgets/different_Size_TextField.dart';
import '../widgets/custom_Images.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_textformfield.dart';
import '../widgets/products.dart';

class AddRecipePage extends StatelessWidget {
  AddRecipePage({super.key});
  final List<String> list = ["Pastries", "Grills", "Soups", "+"];
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
                top: 100,
                left: 0,
                right: 0,
                child: CustomTitle(
                  title: "Add New Recipe",
                  subTitle: "Add item to your refrigerator",
                ),
              ),
              Positioned(
                top: 125,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    Padding(
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
                    Container(
                        width: 240,
                        height: 240,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Stack(
                          children: [
                            Image.asset(CustomImages.pizza),
                            Positioned(
                              left: 180,
                              top: 180,
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(87, 94, 113, 1)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ))),
                            )
                          ],
                        )),
                    const SizedBox(height: 10),
                    const CustomTextFormField(text: "Name"),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Padding(
                        padding: EdgeInsets.all(1),
                        child: Column(
                          children: [
                            Text(
                              "Ingredients:",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Products(text: "Tomato"),
                                Products(text: "Papper"),
                                Products(text: "Corn")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const DifferentSizeTextForm(
                        text: "Details", contentPaddingSize: 35),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Image.asset(CustomImages.selected),
                          ),
                        ),
                        const Text(
                          "Share recipe with community",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
