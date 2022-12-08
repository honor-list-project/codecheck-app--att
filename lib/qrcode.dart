import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class qrcode extends StatefulWidget {
  const qrcode({super.key});

  @override
  State<qrcode> createState() => _qrcodeState();
}

class _qrcodeState extends State<qrcode> {

String ticket = '';

readQRCode() async{
  String code = await FlutterBarcodeScanner.scanBarcode(
    "#FFFFFF", 
    "Cancelar", 
    false, 
    ScanMode.QR
    );
    setState(() => ticket = code != '-1' ? code: 'Não validado');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            if(ticket != '')
            Padding(padding: EdgeInsets.only(bottom:  24.0),
            child: Text(
              'Ticket: $ticket',
              style: TextStyle(fontSize: 30.0),
            ),
            ),
            ElevatedButton.icon(onPressed: readQRCode,
            icon: Icon(Icons.qr_code),
            label: Text("Validar"),
             ),
          ],
        ),
      ),

    );
  }
}