import 'package:flutter/material.dart';
import 'admin_dashboard.dart'; // Import the admin dashboard
import 'loginpage.dart'; // Import the user login page

class SignUpUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminDashboard()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Full width and height
                padding: EdgeInsets.symmetric(vertical: 16.0), // Adjust vertical padding
              ),
              child: Center(
                child: Text(
                  'Admin',
                  style: TextStyle(
                    fontSize: 18, // Adjust font size
                    fontWeight: FontWeight.bold, // Make text bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Full width and height
                padding: EdgeInsets.symmetric(vertical: 16.0), // Adjust vertical padding
              ),
              child: Center(
                child: Text(
                  'User',
                  style: TextStyle(
                    fontSize: 18, // Adjust font size
                    fontWeight: FontWeight.bold, // Make text bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
