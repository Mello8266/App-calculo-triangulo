import 'package:flutter/material.dart';

class ImageTriangulo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      alignment: Alignment.topRight,
      width: 160,
      height: 550,
      child: Image(image: AssetImage('image/triangulo.png')),
    );
  }
}