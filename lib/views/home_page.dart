import 'package:flutter/material.dart';
import '../utils/theme/themes.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.handyman_rounded,
              size: 80,
              color: AppThemes.lightTheme.primaryColor,
            ),

            const SizedBox(height: 30),

            // title
            Text(
              "Home Page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 5),

            // subtitle
            Text(
              "This is the Home page",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
          ],
        ),
      )
    );
  }
}











