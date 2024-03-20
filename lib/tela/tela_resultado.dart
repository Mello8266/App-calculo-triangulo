import 'package:flutter/material.dart';
import 'package:flutter_application_1/componente/estilizacao.dart';

class TelaResultado extends StatefulWidget {
  final int resultado = 0;
  const TelaResultado({super.key});

  @override
  State<TelaResultado> createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  late int resultado;
  @override
  void initState() {
    resultado = widget.resultado;    
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:resultadoAppBar,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: resultadoContainer,
          child: resultadoText(resultado),
        ),
      ),
    );
  }
}
