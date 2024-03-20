import 'package:flutter/material.dart';
import 'package:flutter_application_1/componente/coluna.dart';
import 'package:flutter_application_1/componente/estilizacao.dart';
import 'package:flutter_application_1/componente/meu_container.dart';
import 'package:flutter_application_1/componente/texto_lateral.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //! Head
        appBar: appBar,

        //! Body
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //* Container do topo
            Expanded(
              child: MeuContainer(
                cor: Colors.white,
                filho: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //? Inputs
                      const Column(
                        children: [
                          TextoLateral(titulo: "base"),
                          TextoLateral(titulo: "altura")
                        ],
                      ),
                      //? Imagem
                      Container(
                        margin: const EdgeInsets.only(left: 25),
                        alignment: Alignment.topRight,
                        width: 150,
                        height: 150,
                        child: const Image(
                          image: AssetImage('image/triangulo.png')
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
                cor: Colors.white,
                filho: Coluna(),
              ),
            ),

            // * Container final
            const Expanded(
              child: MeuContainer(cor: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}