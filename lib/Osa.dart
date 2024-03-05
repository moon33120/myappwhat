import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myappwhat/Login/login.dart';
import 'package:myappwhat/homepage.dart';
import 'package:myappwhat/showroom.dart';

void main() {
  runApp(Patu());
}

class Patu extends StatefulWidget {
  const Patu({Key? key}) : super(key: key);

  @override
  State<Patu> createState() => _HomePageState();
}

class _HomePageState extends State<Patu> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Settings Page'),
  ];

  TextEditingController dateController = TextEditingController();
  String? selectedOption1;
  String? selectedOption2;
  String? selectedCarModel;

  @override
  void initState() {
    super.initState();
    dateController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking",
          style: TextStyle(fontFamily: 'Kanit'),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 11, 11, 141),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Kanit',
              ),
            ),
            SizedBox(height: 8),
            _buildDropdown(selectedOption1, (String? newValue) {
              setState(() {
                selectedOption1 = newValue;
              });
            }),
            SizedBox(height: 20),
            Text(
              "To",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Kanit',
              ),
            ),
            SizedBox(height: 8),
            _buildDropdown(selectedOption2, (String? newValue) {
              setState(() {
                selectedOption2 = newValue;
              });
            }),
            SizedBox(height: 20),
            Text(
              "Car Model",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Kanit',
              ),
            ),
            SizedBox(height: 8),
            _buildCarModelDropdown(selectedCarModel, (String? newValue) {
              setState(() {
                selectedCarModel = newValue;
              });
            }),
            SizedBox(height: 20),
            _buildDatePicker(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to another page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnotherPage()),
                );
              },
              child: Text(
                'Booking',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildDropdown(String? value, void Function(String?) onChanged) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          onChanged: onChanged,
          items:
              provincesThailand.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Kanit',
                ),
              ),
            );
          }).toList(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Kanit',
          ),
          icon: Icon(Icons.arrow_drop_down),
          isExpanded: true,
          elevation: 16,
          underline: SizedBox(),
          dropdownColor: Colors.white,
        ),
      ),
    );
  }

  Widget _buildCarModelDropdown(
      String? value, void Function(String?) onChanged) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          onChanged: onChanged,
          items: carmodel.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Kanit',
                ),
              ),
            );
          }).toList(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Kanit',
          ),
          icon: Icon(Icons.arrow_drop_down),
          isExpanded: true,
          elevation: 16,
          underline: SizedBox(),
          dropdownColor: Colors.white,
        ),
      ),
    );
  }

  Widget _buildDatePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select date",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () => _selectDate(context),
          child: AbsorbPointer(
            child: TextField(
              controller: dateController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.calendar_today),
                labelText: "Date",
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Kanit',
              ),
              readOnly: true,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate = DateFormat("yyyy-MM-dd").format(pickedDate);
      setState(() {
        dateController.text = formattedDate;
      });
    } else {
      print("No date selected");
    }
  }
}

final List<String> provincesThailand = [
  'กรุงเทพมหานคร',
  'กระบี่',
  'กาญจนบุรี',
  'กาฬสินธุ์',
  'กำแพงเพชร',
  'ขอนแก่น',
  'จันทบุรี',
  'ฉะเชิงเทรา',
  'ชลบุรี',
  'ชัยนาท',
  'ชัยภูมิ',
  'ชุมพร',
  'เชียงราย',
  'เชียงใหม่',
  'ตรัง',
  'ตราด',
  'ตาก',
  'นครนายก',
  'นครปฐม',
  'นครพนม',
  'นครราชสีมา',
  'นครศรีธรรมราช',
  'นครสวรรค์',
  'นครสวรรค์',
  'นราธิวาส',
  'น่าน',
  'บึงกาฬ',
  'บุรีรัมย์',
  'ปทุมธานี',
  'ประจวบคีรีขันธ์',
  'ปราจีนบุรี',
  'ปัตตานี',
  'พระนครศรีอยุธยา',
  'พังงา',
  'พัทลุง',
  'พิจิตร',
  'พิษณุโลก',
  'เพชรบุรี',
  'เพชรบูรณ์',
  'แพร่',
  'พะเยา',
  'ภูเก็ต',
  'มหาสารคาม',
  'มุกดาหาร',
  'แม่ฮ่องสอน',
  'ยะลา',
  'ยโสธร',
  'ร้อยเอ็ด',
  'ระนอง',
  'ระยอง',
  'ราชบุรี',
  'ลพบุรี',
  'ลำปาง',
  'ลำพูน',
  'เลย',
  'ศรีสะเกษ',
  'สกลนคร',
  'สงขลา',
  'สตูล',
  'สมุทรปราการ',
  'สมุทรสงคราม',
  'สมุทรสาคร',
  'สระแก้ว',
  'สระบุรี',
  'สิงห์บุรี',
  'สุโขทัย',
  'สุพรรณบุรี',
  'สุราษฎร์ธานี',
  'สุรินทร์',
  'หนองคาย',
  'หนองบัวลำภู',
  'อ่างทอง',
  'อุดรธานี',
  'อุทัยธานี',
  'อุตรดิตถ์',
  'อุบลราชธานี',
  'อำนาจเจริญ'
];

final List<String> carmodel = [
  'Toyota Camry',
  'Honda Accord',
  'Ford Mustang',
  'Tesla Model S',
  // เพิ่มรุ่นรถยนต์ตามที่ต้องการ
];

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking",
          style: TextStyle(
            fontFamily: 'Kanit',
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 11, 11, 141),
        child: Center(
          child: Text(
            "Thank you for renting a car with us!",
            style: TextStyle(
                fontSize: 24, fontFamily: 'Kanit', color: Colors.white),
          ),
        ),
      ),
    );
  }
}
