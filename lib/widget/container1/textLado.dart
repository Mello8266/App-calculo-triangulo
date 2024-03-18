import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextLado extends StatelessWidget {
  String text;
  TextEditingController textFieldValor = TextEditingController();

  TextEditingController getTextFieldValor(){
    return textFieldValor;
  }
  TextLado(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: 140,
        // height: 60,
        child: TextFormField(
          controller: textFieldValor,
          decoration: InputDecoration(
            labelText: text,
            labelStyle: const TextStyle(fontFamily: 'Inter', fontSize: 20),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
