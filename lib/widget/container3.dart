import 'package:flutter/material.dart';

class ContainerBotao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [Botao('Calcular'), Botao('Limpar')],
    );
  }
}

class Botao extends StatelessWidget {
  String txt;

  Botao(this.txt);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 115,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(56, 0, 82, 100)),
        child: TextButton(
          onPressed: () {},
          child: Text(
            txt,
            style: const TextStyle(
              fontFamily: "Inter",
              fontSize: 20,
              fontWeight: FontWeight.w800
            ),
          ),
        )
      );
  }
}
