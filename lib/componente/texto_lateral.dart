import 'package:flutter/material.dart';
import 'package:flutter_application_1/componente/estilizacao.dart';

class TextoLateral extends StatelessWidget {
  // Atributo
  final String titulo;

  // Construtor
  const TextoLateral({super.key, required this.titulo});
  
  //! Widget
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      width: 140,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: inputDecoration(titulo)
      ),
    );
  }
}