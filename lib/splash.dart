import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro.dart';
import 'package:flutter_application_1/catalog.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/homeUsers.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/myEvents.dart';
import 'package:flutter_application_1/qrCodeValidation.dart';
import 'package:flutter_application_1/settings.dart';
import 'package:flutter_application_1/settingsProfile.dart';
import 'package:flutter_application_1/viewEvents.dart';
import 'package:flutter_application_1/viewMyQrCode.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), (){
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          // builder: (context)=> const Login()));
          // builder: (context)=> const Cadastro()));
          builder: (context)=> const HomeUsers()));
          // builder: (context)=> const Settings()));
          // builder: (context)=> const SettingsProfile()));
          // builder: (context)=> const ViewMyQrCode()));
          // builder: (context)=> const MyEvents()));
          // builder: (context)=> const ViewEvent()));
          // builder: (context)=> const QrCodeValidation(status: false,)));
          // builder: (context)=> const Catalog()));
    });
    
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 5.0,),
            Image.asset('imagens/image.png'),
             Text('C O D E    C H E C K',
            style: TextStyle(
              fontSize: 22.0,
            ),),
          ],
        ),
      ),
    );
  }
  }
