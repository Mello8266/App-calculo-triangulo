import 'package:flutter/material.dart';
import 'package:flutter_application_1/componente/estilizacao.dart';

class MeuContainer extends StatefulWidget {
  final Color cor;
  final Widget? filho;

  // ignore: use_key_in_widget_constructors
  const MeuContainer({required this.cor, this.filho});

  @override
  State<MeuContainer> createState() => _MeuContainerState();
}

class _MeuContainerState extends State<MeuContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: widget.cor,
      child: widget.filho,
    );
  }
}
