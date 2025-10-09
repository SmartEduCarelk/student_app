import 'dart:async';
import 'package:flutter/material.dart';
import '../utils/theme/themes.dart';
import 'home_page.dart';


class StartUpPage extends StatefulWidget {
  const StartUpPage({super.key});

  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomePage after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // Ensure full screen background is white
        body: Center( // Center the content vertically and horizontally
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.jpg',
                width: 150,
                height: 150,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 150,
                    height: 150,
                    color: Colors.grey[300],
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Loading',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              SizedBox(height: 50),
              Text(
                'SmartEduCare',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF9370DB),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}











