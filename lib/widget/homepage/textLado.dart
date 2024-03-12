// Classe do widget do textField, instanciado no coluna.dart

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextLado extends StatelessWidget {
  String? text;
  TextEditingController controlador = TextEditingController(); 

  TextLado(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 200,
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

  void setControlador(controlador){
    this.controlador = controlador;
  }


}
