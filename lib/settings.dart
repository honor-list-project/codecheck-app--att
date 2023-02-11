import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/homeUsers.dart';
import 'package:flutter_application_1/settingsProfile.dart';
import 'package:flutter_application_1/viewMyQrCode.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff827BE9),
        elevation: 1,
           leading: IconButton(onPressed: (() {
          Navigator.pop(context);
        }),
        icon: Icon(Icons.arrow_back_ios_new, color: Color.fromARGB(255, 255, 255, 255),),
      ),
      ),
      
      body: Column(
        children: [
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

          // Card
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
            width: MediaQuery.of(context).size.width * 0.9,
            child: Container(
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(
              //       iconSize: 48,
              //       icon: Icon(
              //         Icons.settings_outlined,
              //         color: Color(0xff827BE9),
              //       ),
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => Settings()),
              //         );
              //       },
              //     ),
              //     Text("Configurações",
              //         style: TextStyle(color: Colors.black, fontSize: 17)),
              //   ],
              // ),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 50.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsProfile()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff827BE9),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'CONFIGURAR PERFIL',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff827BE9)),
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              size: 50.0,
                              color: Color(0xff827BE9),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewMyQrCode()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff827BE9),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ACESSAR QRCODE',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff827BE9)),
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              size: 50.0,
                              color: Color(0xff827BE9),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // NavBottom
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
