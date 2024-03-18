import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/container3/botao.dart';


class ContainerBotao extends StatelessWidget {
  const ContainerBotao({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [Botao('Calcular'), Botao('Limpar')],
    );
  }
}
