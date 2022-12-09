import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'homeUsers.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({super.key});

  @override
  State<SettingsProfile> createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
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
      appBar: AppBar(
        backgroundColor: Color(0xFF9e99e5),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Fundo
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
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            width: 150,
                            height: 150,
                            child: Center(
                              // child: Image.asset('imagens/logo.png'),
                              child: Text(
                                'LS',
                                style: TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFF6A60FA),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Center(
                          child: Text(
                            'CONFIGURAR PERFIL',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Form
            Container(
              child: Form(
                key: _formKey,
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
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          hintText: 'Alterar nome',
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
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          hintText: 'Alterar e-mail',
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
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        validator: (senha) {
                          if (senha == null || senha.isEmpty) {
                            return 'Informe uma senha';
                          } else if (senha.length < 6) {
                            return 'Informe uma senha mais forte! (min. 6 carac...)';
                          }
                          return null;
                        },
                        controller: _controllerSenha,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.lock_sharp,
                              color: Color(0xFF6A60FA), size: 30.0),
                          hintText: 'Alterar senha',
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
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        validator: (tel) {
                          if (tel == null || tel.isEmpty) {
                            return 'Informe seu telefone';
                          } else if (tel.length < 10) {
                            return 'Informe um telefone válido';
                          }
      
                          return null;
                        },
                        controller: _controllerFone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.call,
                              color: Color(0xFF6A60FA), size: 30.0),
                          hintText: 'Alterar telefone',
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
                            print('Enviado');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            )
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff827BE9),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeUsers()),
          );
        },
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Color(0xff827BE9),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.help,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: 30,
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
