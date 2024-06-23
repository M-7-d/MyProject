import 'package:flutter/material.dart';
import 'package:myproject/Presentation/Screens/add_Recipe.dart';
import 'package:myproject/Presentation/Screens/add_item_Page.dart';
import 'package:myproject/Presentation/Screens/storage_Tips.dart';
import 'Screens/recipes_Page.dart';

class CustomNavigationBaar extends StatefulWidget {
  const CustomNavigationBaar({super.key});

  @override
  State<CustomNavigationBaar> createState() => _CustomNavigationBaarState();
}

class _CustomNavigationBaarState extends State<CustomNavigationBaar> {
  int myIndex = 0;
  List<Widget> pages = [
    AddItemsPage(),
    RecipesPage(),
    AddRecipePage(),
    StorageTipsPsge()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(70))),
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: const Color.fromRGBO(118, 81, 123, 1),
          onTap: (value) {
            setState(() {
              myIndex = value;
            });
          },
          currentIndex: myIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "Receip"),
            BottomNavigationBarItem(
                icon: Icon(Icons.tips_and_updates), label: "Storage Tips"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "My Profile"),
          ]),
      body: pages[myIndex],
    );
  }
}
