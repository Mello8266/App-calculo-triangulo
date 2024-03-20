import 'package:flutter/material.dart';
import 'package:flutter_application_1/componente/coluna.dart';
import 'package:flutter_application_1/componente/estilizacao.dart';
import 'package:flutter_application_1/componente/meu_container.dart';
import 'package:flutter_application_1/componente/texto_lateral.dart';
import 'package:flutter_application_1/tela/tela_resultado.dart';

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
            MeuContainer(
              cor: Colors.white,
              filho: Container(
                width: 115,
                height: 100,
                padding: const EdgeInsets.all(20),
                decoration: botaoEstilo,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) => const TelaResultado(),
                      ),
                    );
                  },
                  child: textContainer3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
