// Widget da imagem, instanciado na homePage.dart

import 'package:flutter/material.dart';

class ImageTriangulo extends StatelessWidget {
  const ImageTriangulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(left: 25),
      // alignment: Alignment.topRight,
      // width: 130,
      // height: 550,
      child: const Image(image: AssetImage('image/triangulo.png')),
    );
  }
}