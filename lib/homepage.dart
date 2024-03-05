import 'package:flutter/material.dart';
import 'package:myappwhat/Login/login.dart';
import 'package:myappwhat/SccondPage.dart';
import 'package:myappwhat/Osa.dart';
import 'package:myappwhat/qrcode.dart';
import 'package:myappwhat/showroom.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          // padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: Row(
            children: [Text('Home PageHelo')],
          ),
        ),
        backgroundColor: Colors.blue, // AppBar background color
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondPage()), // Go to the SecondPage
              );
            },
            child: Text('Go to 1 Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Patu()), // Go to the SecondPage
              );
            },
            child: Text('booking'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginPage()), // Go to the SecondPage
              );
            },
            child: Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Showroom()), // Go to the SecondPage
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Color.fromARGB(255, 13, 87, 245), // Background color of the bar
        selectedItemColor:
            Color.fromARGB(255, 109, 9, 240), // Color of the selected item
        unselectedItemColor:
            Color.fromARGB(255, 76, 0, 255), // Color of the unselected items
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          // Handle tap for each item
          if (index == 0) {
            // Navigate to the homepage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Showroom()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Patu()),
            );
            // Handle tap on Search item
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            // Handle tap on Notifications item
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
            // Handle tap on Profile item
          }
        },
      ),
    );
  }
}
