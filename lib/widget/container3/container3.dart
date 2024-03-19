import 'package:flutter/material.dart';
import 'package:flutter_application_1/processo/area_triangulo.dart';
import 'package:flutter_application_1/tela2.dart';

class ContainerBotao extends StatelessWidget {
  final double ? base;
  final double ? altura;
  const ContainerBotao(this.base, this.altura, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            width: 115,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(56, 0, 82, 100)),
            child: TextButton(
              onPressed: () {
                AreaTriangulo t = AreaTriangulo();
                t.setBase(base);
                t.setAltura(altura);
                var resultado = t.calcArea();

                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => TelaResultado(resultado: resultado)));
              },
              child: const Text(
                "Calcular",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            )),
        Container(
          width: 115,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(56, 0, 82, 100)),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Limpar",
              style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          ),
        )
      ],
    );
  }
}
