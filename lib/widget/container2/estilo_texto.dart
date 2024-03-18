import 'package:flutter/material.dart';

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