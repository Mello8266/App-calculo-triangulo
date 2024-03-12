// Classe do widget Row, instanciado em homePage.dart

// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/homepage/imageTriangulo.dart';
import 'package:flutter_application_1/widget/homepage/textLado.dart';

class ColunaLinha extends StatelessWidget {
  // build
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(children: <Widget>[
          TextLado("base"),
          TextLado("altura"),
        ]),
        ImageTriangulo(),
      ],
    );
  }
}
