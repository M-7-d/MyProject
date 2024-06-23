import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/test.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final contoller = Get.put(ItemsController());
    final _db = FirebaseFirestore.instance;
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromRGBO(20, 27, 44, 1))),
            onPressed: () {
              _db.collection("Add_New_Item").add({
                "name": contoller.name,
                "purchaseDate": contoller.purchaseDate,
                "expirationDate": contoller.expirationDate,
                "quantity": contoller.quantity,
                "unit": contoller.unit,
                "marketName": contoller.marketName,
                "notes": contoller.notes
              });
            },
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            )));
  }
}
