import "package:flutter/material.dart";
import 'package:give_get/home.dart';

import 'perfil.dart';
import 'sobre.dart';
import 'Publicar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Inicio(),
  ));
}

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    Home(),
    Publicar(),
    perfil("Meu Perfil"),
    sobre("Sobre APP")
  ];

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xFF11224D),
            label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            backgroundColor: Color(0xFF11224D),
            label: "Divulgar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Color(0xFF11224D),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            backgroundColor: Color(0xFF11224D),
            label: "Sobre",
          ),
        ],
      ),
    );
  }
}
