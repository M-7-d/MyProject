import 'package:flutter/material.dart';
import 'package:myproject/Presentation/components/foods.dart';
import 'package:myproject/Presentation/widgets/custom_Images.dart';
import 'package:myproject/Presentation/widgets/custom_appbar.dart';
import 'package:myproject/Presentation/widgets/custom_textformfield.dart';
import 'package:myproject/Presentation/widgets/products.dart';
import '../widgets/custom_title.dart';

class MyRefrigerator extends StatelessWidget {
  MyRefrigerator({super.key});
  final List<String> list = [
    "Groceries",
    "Dairy Products",
    "Meat Products",
    "All",
    "+",
    "more"
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
                title: "My Refrigerator",
                subTitle: "List if items im my refrigerator",
              ),
            ),
            Positioned(
                top: 200,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(5)),
                      const Expanded(
                          child: CustomTextFormField(
                        text: "Search",
                        icon: Icons.search,
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_list,
                            size: 40,
                          ))
                    ],
                  ),
                )),
            Positioned(
              top: 260,
              left: 0,
              right: 0,
              child: Column(
                children: [
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
                  const Foods()
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
