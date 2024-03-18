import 'package:flutter/material.dart';

class ImageTriangulo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      alignment: Alignment.topRight,
      width: 150,
      height: 150,
      child: const Image(image: AssetImage('image/triangulo.png')),
    );
  }
}