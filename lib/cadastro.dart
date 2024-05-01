import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  Cadastrar createState() => Cadastrar();
}

class Cadastrar extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Give\n &Get'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 28),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            child: ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[],
                    )),
                Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Usuário',
                          labelText: 'CPF/CNPJ',
                          icon: Icon(Icons.person),
                        ))),
                Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: '------@----.com',
                            labelText: 'Endereço de E-mail',
                            icon: Icon(Icons.email)))),
                Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                      obscureText: true, // Use secure text for passwords.
                      decoration: InputDecoration(
                          hintText: 'Senha',
                          labelText: 'Digite sua senha',
                          icon: Icon(Icons.lock))),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Digite sua senha novamente',
                          labelText: 'Confirmar senha',
                          icon: Icon(Icons.lock))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 210.0,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 40.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff4c505b),
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward,
                            )),
                      ),
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
