import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/homepage/colunaLinha.dart';

class ColunaVertical extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 5),
      child: Column(
        children: <Widget>[
          ColunaLinha(),
          TextButton(style: ButtonStyle(
            
          ), onPressed: () {

          }, child: Text("="))
        ],
      ),
    );
  }
}