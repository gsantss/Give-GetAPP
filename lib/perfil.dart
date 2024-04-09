import 'package:flutter/material.dart';

class perfil extends StatelessWidget {
  final String texto;

  perfil(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(texto),
      ),
    );
  }
}