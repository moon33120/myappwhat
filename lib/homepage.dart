import 'package:flutter/material.dart';
import 'package:myappwhat/SccondPage.dart';


class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          // padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: Row(
            children: [
              Text('Home PageHelo')
            ],
          ),
        ),
        backgroundColor: Colors.blue, // AppBar background color
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      SecondPage()), // เชื่อมไปยังหน้าที่สร้างขึ้นใหม่
            );
          },
          child: Text('Go to Second Page '),
        ),
      ),
    );
  }
}
