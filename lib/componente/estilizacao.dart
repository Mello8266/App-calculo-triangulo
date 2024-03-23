import 'package:flutter/material.dart';
//! Cores
const corRoxoEscuro = Color.fromRGBO(56, 0, 82, 100);
const corFundo = Color.fromRGBO(217, 217, 217, 100);
const corFundoAppBar = Color.fromRGBO(140, 111, 201, 100);
const corRoxoClaro = Color.fromRGBO(189, 0, 255, 100);

//! tela_principal
var appBar = AppBar(
  backgroundColor: corFundoAppBar,
  title: const Text(
    'Calcular área do triângulo',
    style: TextStyle(fontSize: 25, fontFamily: 'Inter'),
  )
);

//! texto_lateral
//? Texto do input
inputDecoration(titulo) {
  return InputDecoration(
    labelText: titulo,
    labelStyle: inputLabelStyle,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    suffix: inputSuffix,
  );
}

const inputLabelStyle = TextStyle(
  fontFamily: 'Inter', 
  fontSize: 20,
  color: corRoxoEscuro,
  fontWeight: FontWeight.bold,
);

const inputSuffix = Text(
  "cm",
  style: TextStyle(
    color: corRoxoEscuro,
    fontWeight: FontWeight.bold,
  ),
);

//! Coluna.dart
const colunaTextTitulo = Text("Formula da área do triângulo:",
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 30,
    fontFamily: 'Inter',
    color: corRoxoEscuro,
  ),
);

const colunaTextFormula = Text("b * a / 2",
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 34,
    fontFamily: 'Inter',
    color: corRoxoClaro,
  ),
);

get containerEstilo => BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: corFundo,
);

//! tela_principal.dart Container 3
const textContainer3 = Text(
  "Calcular",
  style: TextStyle(
    fontFamily: 'Inter', 
    fontSize: 20, 
    fontWeight: FontWeight.bold
  ),
);

get botaoEstilo => BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: corRoxoEscuro,
);

//! tela_resultado.dart
var resultadoAppBar = AppBar(
title: const Text(
    "Resultado",
    style: TextStyle(
      fontSize: 25, 
      fontFamily: 'Inter'
    ),
  ),
  backgroundColor: corFundoAppBar,
);

var resultadoContainer = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: const Color.fromRGBO(233, 222, 255, 100),
);

const areaText =
  Text(
  "A área do triangulo é: ",
  style: TextStyle(
    fontSize: 25,
    fontFamily: 'Inter',
    color: corRoxoEscuro,
    fontWeight: FontWeight.bold
  ),
);

resultadoText(resultado){
  return Text(
    resultado,
    style: const TextStyle(
      fontSize: 25,
      fontFamily: 'Inter',
      color: corRoxoClaro,
    )
  );
}

var resultadoBtn = BoxDecoration(
  color: corRoxoEscuro,
  borderRadius: BorderRadius.circular(5)
);

const resultadoBtnText = Text(
  "Voltar",
  style: TextStyle(
    color: corRoxoEscuro,
    fontWeight: FontWeight.bold
  ),
);