import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/componente/estilizacao.dart';

class Coluna extends StatelessWidget {
  // Construtor
  const Coluna({super.key});

  //! Widget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: colunaTextTitulo
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          decoration: containerEstilo,
          child: colunaTextFormula
        ),
      ],
    );
  }
}