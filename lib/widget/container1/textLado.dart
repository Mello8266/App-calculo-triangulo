import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widget/container3/container3.dart';

// ignore: must_be_immutable
class TextLado extends StatefulWidget {
  String text;
  int indicador;
  TextLado(this.indicador, this.text, {super.key});

  @override
  State<TextLado> createState() => _TextLadoState();
}

class _TextLadoState extends State<TextLado> {
  double _numero = 0;
  late int n;
  final _valor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: 140,
        child: TextFormField(
          controller: _valor,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: (valor) { 
            setState(() {
              if ((valor.isEmpty)) {
                _numero = 0;
              } else {
                _numero = double.parse(valor);
              }
            });
            if(widget.indicador ==  1){
              ContainerBotao(_numero);
            } else{
              ContainerBotao(null, _numero);
            }
          },
          decoration: InputDecoration(
            labelText: widget.text,
            labelStyle: const TextStyle(fontFamily: 'Inter', fontSize: 20),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            suffix: const Text("cm"),
          ),
        ),
      ),
    );
  }
}
