import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
          backgroundColor: const Color.fromARGB(255, 23, 2, 140), // Updated app bar color
        ),
        body: Column(
          children: [
            // Other widgets
            _forgotPassword(context),
          ],
        ),
      ),
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {
        // Navigate to the PasswordRecoveryScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PasswordRecoveryScreen()),
        );
      },
      child: Text(
        "Forgot password?",
        style: TextStyle(
          color: const Color.fromARGB(255, 23, 2, 140), // Updated text color
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class PasswordRecoveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
  title: Text(
    'Password Reset',
    style: TextStyle(
      color: Color.fromARGB(255, 243, 242, 242), // Change the color of the text here
    ),
  ),
  backgroundColor: const Color.fromARGB(255, 23, 2, 140),
),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your email to reset password',
              style: TextStyle(
                fontSize: 24, // Increased font size
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 23, 2, 140),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
                fillColor: Colors.grey[200], // Added background color
                filled: true,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Placeholder logic for password recovery
                _showResetMessage(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 105, 54, 244), // Updated text color on button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24), // Added rounded corners
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
              child: Text(
                'Reset Password',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
            // The "Back to Login" button is removed
          ],
        ),
      ),
    );
  }

  void _showResetMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Password Reset"),
          content: Text("An email with instructions to reset your password has been sent."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
