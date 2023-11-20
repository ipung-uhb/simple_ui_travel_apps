// register_screen.dart
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your registration UI components here
            Text('Register Screen'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the dashboard screen
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
