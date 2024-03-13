// Classe do widget Row, instanciado em homePage.dart

// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/homepage/image_triangulo.dart';
import 'package:flutter_application_1/widget/homepage/text_lado.dart';

class ColunaLinha extends StatelessWidget {
  const ColunaLinha({super.key});

  // build
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(children: <Widget>[
          TextLado("base"),
          TextLado("altura"),
        ]),
        const ImageTriangulo(),
      ],
    );
  }
}
