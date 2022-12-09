import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/settingsProfile.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'homeUsers.dart';

class ViewMyQrCode extends StatefulWidget {
  const ViewMyQrCode({super.key});

  @override
  State<ViewMyQrCode> createState() => _ViewMyQrCodeState();
}

class _ViewMyQrCodeState extends State<ViewMyQrCode> {
  final String dataQr = "1234";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 184, 255, 1),
      appBar: AppBar(
        backgroundColor: Color(0xFF9e99e5),
        elevation: 1,
      ),
      body: Column(
        children: [
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
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0),
                            image: DecorationImage(
                              image: AssetImage('imagens/qr-code.png'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: Text(
                          'LER QRCODE',
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
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
            // width: MediaQuery.of(context).size.width * 0.9,
            // height: MediaQuery.of(context).size.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // image: DecorationImage(
                  //   image: AssetImage('imagens/view-qr-code.png'),
                  // ),
                ),
                child: QrImage(
                  data: dataQr,
                ),
              ),
            ),
          ),
        ],
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
