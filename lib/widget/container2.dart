import 'package:flutter/material.dart';

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


// ignore: must_be_immutable
class EstiloTexto extends StatelessWidget{
  String txt;
  double tamFont;
  int r, g, b;

  EstiloTexto(this.txt, this.tamFont, this.r, this.g, this.b, {super.key});

  @override
  Widget build(BuildContext context){
    return Text(
      txt, 
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: tamFont,
        fontFamily: 'Inter',
        color: Color.fromRGBO(r, g, b, 100)
    ),);
  }
}
