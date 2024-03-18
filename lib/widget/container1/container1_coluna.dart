import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/container1/image_triangulo.dart';
import 'package:flutter_application_1/widget/container1/textLado.dart';

class ColunaHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              TextLado("Base:"),
              TextLado("Altura:"),
          ]),
          ImageTriangulo(),
        ],
      ),
    );
  }
}

