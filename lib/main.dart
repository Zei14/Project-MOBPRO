// main.dart
import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // Import the HomePage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English Kyositsu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Use HomePage as the home of the app
    );
  }
}
