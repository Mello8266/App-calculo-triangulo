import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/container1_coluna.dart';
import 'package:flutter_application_1/widget/container2.dart';
import 'package:flutter_application_1/widget/container3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calcular área do triângulo',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Inter'
          ),
        ),
        backgroundColor: const Color.fromRGBO(140, 111, 201, 100),
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromRGBO(252, 250, 255, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  height: 210,
                  margin: const EdgeInsets.only(top: 30),
                  child: ColunaHorizontal()),
              Container(
                height: 230,
                width: 200,
                child: const Center(child: Container2())),
              Container(
                height: 200,
                width: 200,
                child: ContainerBotao(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
