import 'package:flutter/material.dart';

class Publicar extends StatefulWidget {
  @override
  _PublicarItemScreenState createState() => _PublicarItemScreenState();
}

class _PublicarItemScreenState extends State<Publicar> {
  String nome = '';
  String descricao = '';
  String comunidadeSelecionada = 'Comunidades';

  final List<String> comunidades = [
    'Comunidades',
    'PUC-MG',
    'PUC-RJ',
    'UFMG',
    'USP',
    'UFOP',
    'Outros',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 9, 12, 14), // Cor primária do tema (barra de título, botões)
        scaffoldBackgroundColor: Colors.white, // Cor de fundo do Scaffold
        // Outras propriedades de estilo aqui
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF11224D), // Define a cor de fundo da AppBar
          title: Text(
            'Publicar',
            style: TextStyle(color: Colors.white), // Define a cor do texto da AppBar
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
                20.0, 20.0, 20.0, 80.0), // Padding adicionado na parte inferior
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    // Adicione aqui a ação desejada quando a caixa vazia for clicada
                  },
                  child: AspectRatio(
                    aspectRatio:
                        5 / 5, // Proporção da imagem (ajuste conforme necessário)
                    child: Image.asset(
                      "assets/Imagens.png", // Caminho da imagem
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
                  value: comunidadeSelecionada,
                  hint: Text(
                      'Selecione uma comunidade'), // Adiciona uma dica ao campo
                  items: comunidades.map((comunidade) {
                    return DropdownMenuItem(
                      value: comunidade,
                      child: Text(comunidade),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      comunidadeSelecionada = value.toString();
                    });
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xFF11224D),
                    ),
                  ),
                  onPressed: () {
                    // Lógica para publicar o item
                    print('Nome: $nome');
                    print('Descrição: $descricao');
                    print('Comunidade: $comunidadeSelecionada');
                  },
                  child: Text(
                    'Publicar',
                    style: TextStyle(color: Colors.white), // Cor do texto do botão
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Publicar());
}
