import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Cadastre-se'),

      ),
      body: Container(
          padding: EdgeInsets.all(20.0),

          child: Form(

            child: ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(20.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                      ],
                    )
                ),
                Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Usuário',
                          labelText: 'CPF/CNPJ',
                          icon: Icon(Icons.person),
                        )

                    )
                ),
                Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: '------@----.com',
                            labelText: 'Endereço de E-mail',
                            icon: Icon(Icons.email))

                    )
                ),
                Container(
                  padding: const EdgeInsets.only(top:10.0),
                  child:  TextFormField(
                      obscureText: true, // Use secure text for passwords.
                      decoration: InputDecoration(
                          hintText: 'Senha',
                          labelText: 'Digite sua senha',
                          icon: Icon(Icons.lock)

                      )
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top:10.0),
                  child:  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Digite sua senha novamente',
                          labelText: 'Confirmar senha',
                          icon: Icon(Icons.lock)

                      )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height:50.0,
                      width: 210.0,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
                      child: BottomAppBar(

                        child: Text(

                          'Criar Conta',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        color: Colors.lightBlue,
                      ),

                    ),

                  ],
                ),

              ],
            ),
          )
      ),
    );
  }


}