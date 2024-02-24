import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        automaticallyImplyLeading: false, // กำหนดให้ AppBar ไม่มีปุ่มย้อนกลับ
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
          ), // เพิ่มระยะห่างระหว่าง SizedBox กับ Text
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 380,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                // ให้ข้อความอยู่ตรงกลางของ Container
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
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Go Back1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    color: Colors.green,
                    child: ElevatedButton(
                      onPressed: () {
                        print('vutt2');
                        // Add your onPressed action here
                      },
                      child: Text('Button 2'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    color: Color(0xFFFFEF08),
                    child: ElevatedButton(
                      onPressed: () {
                        print('vutt3');
                        // Add your onPressed action here
                      },
                      child: Text('Button 3'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
