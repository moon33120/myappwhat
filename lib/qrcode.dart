import 'package:flutter/material.dart';
import 'package:myappwhat/SccondPage.dart';

// PaymentPage ยังคงเดียวกับตัวอย่างก่อนหน้า

class QRCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code'),
      ),
      body: Center(
        child: Text(
          'QR Code will be displayed here',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SecondPage(),
      '/qr_code': (context) => QRCodePage(),
    },
  ));
}
