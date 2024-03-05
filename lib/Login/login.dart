import 'package:flutter/material.dart';

import 'package:myappwhat/Login/Password.dart';
import 'package:myappwhat/Login/signup.dart';
import 'package:myappwhat/showroom.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 23, 2, 140),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              __forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "CAR RENTAL",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white), // Change color here
        ),
        Text(
          "Enter your email to login",
          style: TextStyle(color: Colors.white), // Change color here
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(fontSize: 13, color: Colors.white),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Color.fromARGB(255, 73, 7, 239).withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(fontSize: 13, color: Colors.white),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: const Color.fromARGB(255, 94, 37, 238).withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          style: TextStyle(color: Colors.white), // Change text color here
          obscureText: true,
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(
              30), // Add padding to create space around the button
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Showroom()), // Go to the SecondPage
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 20),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: const Text("Login",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 7, 7, 7))),
          ),
        )
      ],
    );
  }

  __forgotPassword(context) {
    return TextButton(
      onPressed: () {
        // Navigate to another page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PasswordRecoveryScreen()),
        );
      },
      child: const Text(
        "Forgot password?",
        style: TextStyle(color: Color.fromARGB(255, 233, 232, 235)),
      ),
    );
  }
}

_signup(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Don't have an account? ",
        style: TextStyle(color: Color.fromARGB(255, 136, 133, 133)),
      ),
      TextButton(
          onPressed: () {
            // Navigate to another page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
            );
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Color.fromARGB(255, 242, 242, 244)),
          ))
    ],
  );
}
