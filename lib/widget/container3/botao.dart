import 'package:flutter/material.dart';
import 'package:flutter_application_1/processo/area_triangulo.dart';
import 'package:flutter_application_1/widget/container1/textLado.dart';


// ignore: must_be_immutable
class Botao extends StatelessWidget {
  final String txt;
  Botao(this.txt);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 115,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(56, 0, 82, 100)),
        child: TextButton(
          onPressed: () {
            double area = getTextFieldValor();
            AreaTriangulo t = AreaTriangulo(0, 0);
          },
          child: Text(
            txt,
            style: const TextStyle(
                fontFamily: "Inter", 
                fontSize: 20, 
                fontWeight: FontWeight.w900),
          ),
        ));
  }
}
