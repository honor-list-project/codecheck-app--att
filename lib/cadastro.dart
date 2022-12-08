import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/usuarios.dart';
import 'package:flutter_application_1/values/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/user.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerCPF = TextEditingController();
  TextEditingController _controllerFone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 184, 255, 1),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('imagens/image.png'),
                  fit: BoxFit.fill,
                )),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Center(
                          child: Image.asset('imagens/logo.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'CADASTRE-SE',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              top: 4,
                              left: 10,
                              right: 10,
                              bottom: 4,
                            ),
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: TextField(
                              controller: _controllerName,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.person_outlined,
                                    color: Color(0xFF6A60FA), size: 30.0),
                                hintText: 'nome',
                                hintStyle: TextStyle(
                                    color: Color(0xFF6A60FA),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 17),
                          Container(
                            padding: EdgeInsets.only(
                              top: 4,
                              left: 10,
                              right: 10,
                              bottom: 4,
                            ),
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: TextField(
                              controller: _controllerEmail,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.email_outlined,
                                    color: Color(0xFF6A60FA), size: 30.0),
                                hintText: 'e-mail',
                                hintStyle: TextStyle(
                                    color: Color(0xFF6A60FA),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 17),
                          Container(
                            padding: EdgeInsets.only(
                              top: 4,
                              left: 10,
                              right: 10,
                              bottom: 4,
                            ),
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: TextField(
                              controller: _controllerSenha,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.lock_sharp,
                                    color: Color(0xFF6A60FA), size: 30.0),
                                hintText: 'senha',
                                hintStyle: TextStyle(
                                    color: Color(0xFF6A60FA),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 17),
                          Container(
                            padding: EdgeInsets.only(
                              top: 4,
                              left: 10,
                              right: 10,
                              bottom: 4,
                            ),
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: TextField(
                              controller: _controllerCPF,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.person,
                                    color: Color(0xFF6A60FA), size: 30.0),
                                hintText: 'cpf',
                                hintStyle: TextStyle(
                                    color: Color(0xFF6A60FA),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 17),
                          Container(
                            padding: EdgeInsets.only(
                              top: 4,
                              left: 10,
                              right: 10,
                              bottom: 4,
                            ),
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: TextField(
                              controller: _controllerFone,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.call,
                                    color: Color(0xFF6A60FA), size: 30.0),
                                hintText: 'telefone',
                                hintStyle: TextStyle(
                                    color: Color(0xFF6A60FA),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 23),
                          Container(
                            padding: EdgeInsets.only(
                              top: 4,
                              left: 4,
                              right: 4,
                              bottom: 4,
                            ),
                            width: MediaQuery.of(context).size.width / 3.0,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color.fromRGBO(106, 96, 250, 1),
                            ),
                            child: IconButton(
                              iconSize: 30,
                              icon: Icon(
                                Icons.check_rounded,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                   _doSignUp();
                                  //  Navigator.pop(context);
                                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Users()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
              ),
               Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tem uma conta?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6A60FA),
                      ),
                    ),
                    Text(
                      ' Faça o login agora!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D25A1),
                      ),
                    )
                  ],
                ),
              ),
            ],
            
          ),
          
        ),
      ),
    
      
    );
  }

  void _doSignUp(){
    User newUser = User(
      name: _controllerName.text, 
      email: _controllerEmail.text,
      senha: _controllerSenha.text,
      cpf: _controllerCPF.text,
      fone: _controllerFone.text, 
    );

    print(newUser);
    _saveUser(newUser);

  }
  void _saveUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PreferencesKeys.activeUser, json.encode(user.toJson()), );

  }
}
