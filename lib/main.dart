import 'package:flutter/material.dart';
import 'signup us.dart';
import 'admin_dashboard.dart'; // Import the admin dashboard
import 'loginpage.dart'; // Import the user login page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpUsPage(),
        '/admin_dashboard': (context) => AdminDashboard(),
        '/user_login': (context) => LoginPage(),
      },
    );
  }
}
