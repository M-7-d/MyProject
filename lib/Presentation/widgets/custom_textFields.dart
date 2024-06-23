import 'package:flutter/material.dart';

class CustomtextFields extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function(String)? onChanged1;
  final void Function(String)? onChanged2;

  const CustomtextFields(
      {super.key,
      required this.text1,
      required this.text2,
      this.onChanged1,
      this.onChanged2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: TextFormField(
                onChanged: onChanged1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: text1),
              ),
            )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: TextFormField(
                onChanged: onChanged2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: text2),
              ),
            ))
          ],
        ),
      ],
    );
  }
}
