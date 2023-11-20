// register_screen.dart
import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _retypePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _retypePasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Retype Password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your registration logic here
                // For now, navigate to the dashboard screen
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: Text('Register'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigate to the login screen
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Already have an account? Login here.'),
            ),
          ],
        ),
      ),
    );
  }
}
