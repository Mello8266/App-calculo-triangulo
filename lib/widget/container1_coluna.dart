import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/image_triangulo.dart';
import 'package:flutter_application_1/widget/textLado.dart';

class ColunaHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 50, left: 5),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              TextLado("Base"),
              TextLado("Altura"),
          ]),
          ImageTriangulo(),
        ],
      ),
    );
  }
}

