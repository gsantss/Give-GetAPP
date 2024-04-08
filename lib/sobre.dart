import 'package:flutter/material.dart';

class sobre extends StatelessWidget {
  final String texto;

  sobre(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(texto),
      ),
    );
  }
}