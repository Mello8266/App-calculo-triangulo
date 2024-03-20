import 'package:flutter/material.dart';

//! tela_principal
var appBar = AppBar(
    title: const Text(
    'Calcular área do triângulo',
    style: TextStyle(
      fontSize: 25,
      fontFamily: 'Inter'
    ),
  )
);


//! texto_lateral
const inputLabelStyle = TextStyle(
  fontFamily: 'Inter', fontSize: 20
);

inputDecoration(titulo) { 
  return InputDecoration(
    labelText: titulo,
    labelStyle: inputLabelStyle,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    suffix: const Text("cm"),
  );
}


//! Coluna.dart
const colunaTextTitulo = Text("Formula da área do triângulo:", 
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 30,
  fontFamily: 'Inter',
  color: Color.fromRGBO(56, 0, 82, 100)
  )
);

const colunaTextFormula = Text("b * a / 2", 
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 34,
    fontFamily: 'Inter',
    color: Color.fromRGBO(189, 0, 255, 100)
  )
);

get containerEstilo => BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: const Color.fromRGBO(217, 217, 217, 100),
);