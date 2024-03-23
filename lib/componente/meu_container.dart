import 'package:flutter/material.dart';

class MeuContainer extends StatelessWidget {
  final Widget? filho;

  // ignore: use_key_in_widget_constructors
  const MeuContainer({this.filho});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 150,
      child: filho,
    );
  }
}
