import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/componente/estilizacao.dart';

class TelaResultado extends StatefulWidget {
  final String resultado;
  const TelaResultado({super.key, required this.resultado});

  @override
  State<TelaResultado> createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  late String resultado;
  @override
  void initState() {
    resultado = widget.resultado;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const espacamento = SizedBox(
      height: 15,
    );

    return Scaffold(
      appBar: resultadoAppBar,
      body: Center(
        child: Container(
          height: 210,
          decoration: resultadoContainer,
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              areaText,
              espacamento,
              resultadoText(resultado),
              espacamento,
              btnFechar(context)
            ],
          ),
        ),
      ),
    );
  }

  Container btnFechar(BuildContext context){
    return Container(
      width: 100,
      decoration: resultadoBtn,
      child: TextButton(onPressed: (){
        Navigator.pop(context);
      }, 
        child: resultadoBtnText,
      ),
    );
  }
}
