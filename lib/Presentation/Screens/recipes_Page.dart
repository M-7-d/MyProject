import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myproject/Presentation/widgets/custom_Images.dart';
import 'package:myproject/Presentation/widgets/custom_appbar.dart';
import 'package:myproject/Presentation/widgets/custom_textformfield.dart';
import 'package:myproject/Presentation/widgets/custom_title.dart';
import 'package:myproject/Presentation/widgets/products.dart';

class RecipesPage extends StatelessWidget {
  RecipesPage({super.key});
  final List<String> list = ["Pastries", "Grills", "Soups", "All"];

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
                  title: "Recipes",
                  subTitle: "List of Shared Recipes",
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
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                        child: ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              return Products(text: list[index]);
                            }),
                      ),
                      Stack(children: [
                        Container(
                          width: 380,
                          height: 390,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              color: Colors.green,
                              height: 250,
                              width: 350,
                              child: Image.asset(
                                CustomImages.food,
                                fit: BoxFit.cover,
                              ),
                            )),
                        Positioned(
                          top: 260,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Iconsax.like_1,
                                              size: 30,
                                            )),
                                        const Text(
                                          "1.5K",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.insert_comment_sharp,
                                              size: 30,
                                            )),
                                        const Text(
                                          "250",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Iconsax.send_2,
                                              size: 30,
                                            )),
                                        const Text(
                                          "25",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Iconsax.heart,
                                          size: 30,
                                        )),
                                  ],
                                ),
                                const Text(
                                  "Caeser Salad",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "A Caesar salad is green salad of romaine lettuce and croutons dressed with lemon juice, olive oil ,egg,....",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ])
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
