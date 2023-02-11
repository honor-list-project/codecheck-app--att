import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro.dart';
import 'package:flutter_application_1/data/userController.dart';
import 'package:flutter_application_1/homeUsers.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/values/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controller = UserController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  var msgError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    msgError = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      if (msgError) Text('Error! Email ou Senha inválido!'),
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
                        child: TextFormField(
                          validator: (email) {
                            if (!EmailValidator.validate(email!)) {
                              return 'Informe um email válido';
                            }

                            return null;
                          },
                          controller: _controllerEmail,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person_outlined,
                                color: Color(0xFF6A60FA), size: 30.0),
                            hintText: 'email',
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
                        child: TextFormField(
                          validator: (senha) {
                            if (senha == null || senha.isEmpty) {
                              return 'Digite sua senha';
                            } else if (senha.length < 6) {
                              return 'Digite uma senha mais forte';
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
                            if (_formKey.currentState!.validate()) {
                              _fazerLogin(context);
                            }
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
                          ],
                          ),
                      ),
                      SizedBox(height: 7.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  
                                  style:
                                  
                                  ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                  primary: Color(0xFF6A60FA),
                                  ),
                                  onPressed: (){
                                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Cadastro()),
                            );
                                  },  child: Text(
                                  ' Cadastre-se agora!',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ) ,),
                          ],
                        ),
              
                       
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

  void _fazerLogin(context) async {
    String emailForm = _controllerEmail.text;
    String senhaForm = _controllerSenha.text;
    
    // CODIGO MENCINADO NO COMENTARIO ABAIXO
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeUsers()),
    );

    // CASO QUEIRA UTILIZAR A API DESCOMENTE ABAIXO E REMOVA O CODIGO CITADO ACIMA
    // bool loginAuth = await controller.loginAuth(emailForm, senhaForm);
    // if (loginAuth) {
    //   msgError = false;
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => HomeUsers()),
    //   );
    // } else {
    //   setState(() {
    //     msgError = true;
    //   });
    // }
  }

  // Future<bool> _getsavedUser() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? jsonUser = prefs.getString(PreferencesKeys.activeUser);
  //   if (jsonUser == null) {
  //     print('sem dados salvos');
  //     return false;
  //   }

  //   print('sabe se lá da onde veio: $jsonUser');
  //   Map<String, dynamic> mapUser = json.decode(jsonUser!);
  //   User user = User.fromJson(mapUser);
  //   // return user;
  //   return true;
  // }
}
