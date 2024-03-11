import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/coluna.dart';

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
        child: Coluna(
        ),
      ),
    );
  }
}
