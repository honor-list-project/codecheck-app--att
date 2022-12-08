import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context)=>Home()));
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
