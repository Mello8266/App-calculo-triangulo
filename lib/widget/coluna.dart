import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/imageTriangulo.dart';
import 'package:flutter_application_1/widget/textLado.dart';

class Coluna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 5),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              TextLado("Lado a"),
              TextLado("Lado b"),
              TextLado("Lado c"),
          ]),
          ImageTriangulo(),
        ],
      ),
    );
  }
}

