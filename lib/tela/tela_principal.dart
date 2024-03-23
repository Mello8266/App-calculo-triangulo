import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/componente/coluna.dart';
import 'package:flutter_application_1/componente/estilizacao.dart';
import 'package:flutter_application_1/componente/meu_container.dart';
import 'package:flutter_application_1/tela/tela_resultado.dart';
import 'package:flutter_application_1/processo/area_triangulo.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  TextEditingController inputBase = TextEditingController();
  TextEditingController inputAltura = TextEditingController();
  String resultado = '';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          //! Head
          appBar: appBar,

          //! Body
          body: Column(
            children: [
              //* Container do topo
              Expanded(
                child: MeuContainer(
                  filho: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //? Inputs
                        Column(
                          children: [
                            textoLateral(context, "base"),
                            textoLateral(context, "altura")
                          ],
                        ),
                        //? Imagem
                        Container(
                          margin: const EdgeInsets.only(left: 25),
                          alignment: Alignment.topRight,
                          width: 150,
                          height: 150,
                          child: const Image(
                            image: AssetImage('image/triangulo.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // * Container do meio
              const Expanded(
                child: MeuContainer(
                  filho: Coluna(),
                ),
              ),

              // * Container final
              MeuContainer(
                filho: Center(
                  child: Container(
                    width: 150,
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    decoration: botaoEstilo,
                    child: myBtn(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //! TextField do topo
  Container textoLateral(BuildContext context, String titulo) {
    if (titulo == "base") {
      return Container(
        margin: const EdgeInsets.only(bottom: 15),
        width: 140,
        child: TextField(
          controller: inputBase,
          keyboardType: TextInputType.number,
          decoration: inputDecoration(titulo),
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.only(bottom: 15),
        width: 140,
        child: TextField(
          controller: inputAltura,
          keyboardType: TextInputType.number,
          decoration: inputDecoration(titulo),
        ),
      );
    }
  }

  //! Botão do final
  TextButton myBtn(BuildContext context) {
    return TextButton(
      onPressed: () {
        var base = double.parse(inputBase.text);
        var altura = double.parse(inputAltura.text);
        var t = AreaTriangulo();
        t.setBase(base);
        t.setAltura(altura);

        Navigator.push(context, 
          MaterialPageRoute( 
            builder: (_) => TelaResultado(resultado: t.calcArea()),
          ),
        );
      },
      child: textContainer3,
    );
  }
}


