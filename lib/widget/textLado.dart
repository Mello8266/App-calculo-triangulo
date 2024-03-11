import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextLado extends StatelessWidget {
  String text;

  TextLado(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: 200,
        height: 60,
        child: TextField(
          decoration: InputDecoration(
              labelText: text,
              border:
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
        ),
      ),
    );
  }
}
