import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Resultado",
          style: TextStyle(fontSize: 25, fontFamily: 'Inter'),
        ),
        backgroundColor: const Color.fromRGBO(140, 111, 201, 100),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(217, 217, 217, 100),
          ),
          child: Text(
            "O resultado é: $resultado",
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Inter',
                color: const Color.fromRGBO(189, 0, 255, 100)),
          ),
        ),
      ),
    );
  }
}
