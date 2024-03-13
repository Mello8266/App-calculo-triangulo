import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  String txt;

  Botao(this.txt);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextButton(onPressed:(){
        
      } 
      , child: Text(txt)),
    );
  }
}