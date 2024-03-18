import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/container2/estilo_texto.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: EstiloTexto("Formula da área do triângulo:", 30, 56, 0, 82)
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(217, 217, 217, 100),
          ),
          child: EstiloTexto("b * a / 2", 34, 189, 0, 255),
        )
      ],
    );
  }
}
