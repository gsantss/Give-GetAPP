import 'package:flutter/material.dart';
import 'package:trab/tela//cadastro.dart';



var routes = <String, WidgetBuilder>{
  "/Cadastro": (BuildContext context) => Cadastro(),
};

void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.cyan,primarySwatch: Colors.cyan,
        primaryColorDark: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Cadastro(),
    routes: routes));
