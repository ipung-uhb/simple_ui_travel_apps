// login_screen.dart
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your login UI components here
            Text('Login Screen'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the dashboard screen
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
