import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myproject/test2.dart';

class CustomButton extends ConsumerWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = FirebaseFirestore.instance;
    final item = ref.watch(itemsProvider);

    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromRGBO(20, 27, 44, 1))),
            onPressed: () {
              db.collection("Add_New_Item").add(item.toMap());
            },
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            )));
  }
}
