import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/data/userController.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/homeUsers.dart';
import 'package:flutter_application_1/values/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/user.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final controller = UserController();
  var msgError;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerCPF = TextEditingController();
  TextEditingController _controllerFone = TextEditingController();

  @override
  void initState() {
    super.initState();
    msgError = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 184, 255, 1),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          child: Form(
            key: _formKey,
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
                            if (msgError) Text('Error! Dados inválidos!'),
                            // Input 1
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                validator: (nome) {
                                  if (nome == null || nome.isEmpty) {
                                    return 'Digite seu usuário';
                                  }
                                  return null;
                                },
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
                            // Input 2
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                validator: (email) {
                                  if (!EmailValidator.validate(email!)) {
                                    return "Informe um email valido";
                                  }

                                  return null;
                                },
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
                            // Input 3
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                validator: (senha){
                                  if(senha == null || senha.isEmpty){
                                    return 'Informe uma senha';
                                  }else if(senha.length < 6){
                                    return 'Informe uma senha mais forte! (min. 6 carac...)';
                                  }
                                  return null;
                                },
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
                            // Input 4
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                validator: (cpf){
                                  if(cpf == null || cpf.isEmpty){
                                    return 'Informe seu cpf';
                                  }else if(cpf.length != 11){
                                    return 'Informe um cpf válido';
                                  }
                                  
                                  return null;
                                },                               controller: _controllerCPF,
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
                            // Input 5
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                validator: (tel){
                                  if(tel == null || tel.isEmpty){
                                    return 'Informe seu telefone';
                                  }else if(tel.length < 10){
                                    return 'Informe um telefone válido';
                                  }

                                  return null;
                                },
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(106, 96, 250, 1),
                              ),
                              child: IconButton(
                                iconSize: 30,
                                icon: Icon(
                                  Icons.check_rounded,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _doSignUp(context);
                                  }
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
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text(
                          ' Faça o login agora!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D25A1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _doSignUp(context) async {
    User newUser = User(
      nome: _controllerName.text,
      email: _controllerEmail.text,
      password: _controllerSenha.text,
      cpf: _controllerCPF.text,
      telefone: _controllerFone.text,
    );

    bool cadastroUser = await controller.cadastroUser(newUser);
    if(cadastroUser == true){
      msgError = false;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeUsers()),
      );
    }else{
      msgError = true;
      print('não registrado');
    }
  }
}
