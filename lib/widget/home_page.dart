import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/botao.dart';
import 'package:flutter_application_1/widget/container1_coluna.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calcular área do triângulo',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Color.fromRGBO(140, 111, 201, 100),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              width: 200,
              child: ColunaHorizontal()),
            Container(
              height: 150,
              width: 200,
              color: Colors.red,
              child: Text("Formula área do triangulo"),
            ),
            Container(
              height: 200,
              width: 200,
              child: Row(children: [
                Botao('='),
                Botao('Limpar'),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
