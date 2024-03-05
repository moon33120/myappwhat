import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 23, 2, 140),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Create an account',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 23, 2, 140)),
              ),
              SizedBox(height: 48), // Increased space between title and form fields
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24), // Increased space between last field and button
           ElevatedButton(
  onPressed: () {
    // Add sign-up logic here
    _showSignUpSuccess(context); // Call the method to display the success message
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 23, 2, 140),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.symmetric(vertical: 16),
  ),
  child: Text(
    'Sign Up',
    style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 252, 252, 253)),
  ),
),

              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Navigate to the login page
                  Navigator.pop(context);
                },
                child: Text(
                  'Already have an account? Sign in',
                  style: TextStyle(color: const Color.fromARGB(255, 23, 2, 140)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _showSignUpSuccess(BuildContext context) {
  print("Showing Snackbar: Sign up successful!");
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Sign up successful!'),
      backgroundColor: Colors.green,
    ),
  );
}


void main() {
  runApp(MaterialApp(
    home: SignUpPage(),
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 23, 2, 140),
      hintColor: Color.fromARGB(255, 23, 2, 140),
      fontFamily: 'Roboto', // Custom font family
    ),
  ));
}}