import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/catalog.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/myEvents.dart';
import 'package:flutter_application_1/notifications.dart';
import 'package:flutter_application_1/qrcode.dart';
import 'package:flutter_application_1/settings.dart';
import 'package:flutter_application_1/utils/AppColors.dart';

class HomeUsers extends StatefulWidget {
  const HomeUsers({Key? key}) : super(key: key);

  @override
  _HomeUsersState createState() => _HomeUsersState();
}

class _HomeUsersState extends State<HomeUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(184, 184, 255, 1),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Fundo
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('imagens/homeU.png'),
                  fit: BoxFit.fill,
                )),
                padding: EdgeInsets.only(top: 10),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(width: 1.5, color: Color(0xffadb5bd)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffadb5bd),
                          offset: const Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Color(0xffadb5bd),
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    width: 150,
                    height: 150,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 48,
                            icon: Icon(
                              Icons.settings_outlined,
                              color: AppColors.tercColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()),
                              );
                            },
                          ),
                          Text("Configurações",
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 17)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(width: 1.5, color: Color(0xffadb5bd)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffadb5bd),
                          offset: const Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Color(0xffadb5bd),
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    width: 150,
                    height: 150,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 48,
                            icon: Icon(
                              Icons.confirmation_num_outlined,
                              color: AppColors.tercColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyEvents()),
                              );
                            },
                          ),
                          Text("Meus eventos",
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 17)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(width: 1.5, color: Color(0xffadb5bd)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffadb5bd),
                          offset: const Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Color(0xffadb5bd),
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    width: 150,
                    height: 150,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 48,
                            icon: Icon(
                              Icons.qr_code_2_outlined,
                              color: AppColors.tercColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => qrcode()),
                              );
                            },
                          ),
                          Text("Ler QR Code",
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(width: 1.5, color: Color(0xffadb5bd)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffadb5bd),
                          offset: const Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Color(0xffadb5bd),
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    width: 150,
                    height: 150,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 48,
                            icon: Icon(
                              Icons.fact_check_outlined,
                              color: AppColors.tercColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Catalog()),
                              );
                            },
                          ),
                          Text("Catálogo",
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              )
            ],
          ),
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.tercColor,
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
        color: AppColors.tercColor,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Notifications()),
                    );
                  },
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
