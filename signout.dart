import 'package:flutter/material.dart';
import 'login.dart';

class SignoutPage extends StatelessWidget {
  const SignoutPage({Key? key}) : super(key: key);

  void _logout(BuildContext context) {
    // Perform logout logic here

    // Navigate back to login page
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Out'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Boy.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _logout(context),
              child: Text('Log In Again'),
            ),
          ],
        ),
      ),
    );
  }
}
