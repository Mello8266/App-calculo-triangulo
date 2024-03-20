import 'package:flutter/material.dart';

class MeuContainer extends StatelessWidget {
  final Color cor;
  final Widget? filho;

  // ignore: use_key_in_widget_constructors
  const MeuContainer({required this.cor, this.filho});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      color: cor,
      child: filho,
    );
  }
}
