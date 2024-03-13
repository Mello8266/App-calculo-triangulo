import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/homepage/coluna_linha.dart';

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
        backgroundColor: const Color.fromRGBO(140, 111, 201, 100),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: <Widget>[
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .4,
                  color: Colors.black,
                  // child: ColunaLinha(),
                ),
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .3,
                  color: Colors.blue,
                ),
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .3,
                  color: Colors.red,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
