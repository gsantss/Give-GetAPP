import 'package:flutter/material.dart';
import 'package:trabalho/cadastro.dart';
import 'package:trabalho/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}
