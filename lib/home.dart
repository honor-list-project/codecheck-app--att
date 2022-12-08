import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/values/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

    TextEditingController _controllerName = TextEditingController();
      TextEditingController _controllerSenha = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  image: AssetImage('imagens/partecima.png'),
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
              Container(
                padding: EdgeInsets.only(top: 10),
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.person_outlined,
                              color: Color(0xFF6A60FA), size: 30.0),
                          hintText: 'usuário',
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
                        _fazerLogin();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Não tem uma conta?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ' Cadastre-se agora!',
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
            ],
          ),
        ),
      ),
    );
   
  } 
  void _fazerLogin() async{
      String nameForm = this._controllerName.text;
      String senhaForm = this._controllerSenha.text;
     

     User savedUser = await _getsavedUser();
     print(savedUser);
     if(nameForm == savedUser.name && senhaForm == savedUser.senha){
      print("Login efetuado com sucesso");
     }
     
    }
   Future<User> _getsavedUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonUser = prefs.getString(PreferencesKeys.activeUser);
    print(jsonUser);


    Map<String,dynamic> mapUser = json.decode(jsonUser!);
    User user = User.fromJson(mapUser);
    return user;
   }
}
