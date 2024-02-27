import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:myappwhat/homepage.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 360,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Payment Method',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cardholder Name',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter cardholder name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Card Number',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter card number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: const [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiration Date',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'MM/YY',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.0), // ระยะห่างระหว่างช่องข้อมูล
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'CVV',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [],
              ),
            ),
            const Text(
              'Payment amount',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 360,
              height: 50,
              color: Color.fromARGB(41, 8, 142, 252),
              child: Row(
                children: [
                  Text('1 day'),
                  Spacer(), // จัดตัวอักษร '1 day' ไว้ด้านซ้ายของ Container
                  Text('B 150'),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 360,
              height: 50,
              color: Color.fromARGB(41, 8, 142, 252),
              child: Row(
                children: [
                  Text('1 day'),
                  Spacer(), // จัดตัวอักษร '1 day' ไว้ด้านซ้ายของ Container
                  Text('B 150'),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 360,
              height: 50,
              color: Color.fromARGB(41, 8, 142, 252),
              child: Row(
                children: [
                  Text('1 day'),
                  Spacer(), // จัดตัวอักษร '1 day' ไว้ด้านซ้ายของ Container
                  Text('B 150'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    // ตรวจสอบการทำงานต่อไปหลังจากกดปุ่ม
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        Color.fromARGB(255, 6, 2, 209), // สีของตัวหนังสือบนปุ่ม
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // ระยะห่างของขอบปุ่ม
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // รูปร่างของปุ่ม
                    ),
                  ),
                  child: Text('Continue'),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Color.fromARGB(255, 13, 87, 245), // Background color of the bar
  selectedItemColor: Color.fromARGB(255, 109, 9, 240), // Color of the selected item
  unselectedItemColor: Color.fromARGB(255, 76, 0, 255), // Color of the unselected items
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
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
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else if (index == 1) {
      // Handle tap on Search item
    } else if (index == 2) {
      // Handle tap on Notifications item
    } else if (index == 3) {
      // Handle tap on Profile item
    }
  },
),

    );
  }
}
