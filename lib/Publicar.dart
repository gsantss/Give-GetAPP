import 'package:flutter/material.dart';

class Publicar extends StatefulWidget {
  @override
  _PublicarItemScreenState createState() => _PublicarItemScreenState();
}

class _PublicarItemScreenState extends State<Publicar> {
  String nome = '';
  String descricao = '';
  String categoriaSelecionada = 'Categoria';

  final List<String> categorias = [
    'Categoria',
    'Eletrônicos',
    'Moda',
    'Casa',
    'Esportes',
    'Outros',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  // Adicione aqui a ação desejada quando a caixa vazia for clicada
                },
                child: Container(
                  width: double.infinity,
                  height: 100,
                  
                  child: Image.asset(
                    "assets/Imagens.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),


              SizedBox(height: 50),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome do Item'),
                onChanged: (value) {
                  setState(() {
                    nome = value;
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Descrição'),
                maxLines: null,
                onChanged: (value) {
                  setState(() {
                    descricao = value;
                  });
                },
              ),
              SizedBox(height: 20),
              DropdownButtonFormField(
                value: categoriaSelecionada,
                items: categorias.map((categoria) {
                  return DropdownMenuItem(
                    value: categoria,
                    child: Text(categoria),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    categoriaSelecionada = value.toString();
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para publicar o item
                  print('Nome: $nome');
                  print('Descrição: $descricao');
                  print('Categoria: $categoriaSelecionada');
                },
                child: Text('Publicar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Publicar(),
  ));
}
