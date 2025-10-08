// Flutter material package provides material design widgets used below.
import 'package:flutter/material.dart';

// Entry point of the app. runApp inflates the given widget and attaches it to
// the screen.
void main() {
  runApp(const MyApp());
}

// Root widget of the application. This sets up MaterialApp which provides
// app-wide configuration such as theme and the initial `home` route.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner in the top-right while developing.
      debugShowCheckedModeBanner: false,
      // Application title (used by the OS in task switchers etc.).
      title: 'Login Page',
      // The first screen shown when the app starts.
      home: const LoginPage(),
    );
  }
}

// This widget builds the login screen.
// It's a StatelessWidget here — if you need dynamic UI (toggling widgets,
// reacting to user input, etc.) you would convert this to a StatefulWidget.
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual structure (app bar, body, etc.).
    return Scaffold(
      backgroundColor: Colors.white, // Use white background for this page.
      body: Padding(
        // Add consistent padding around the whole screen content.
        padding: const EdgeInsets.all(24.0),
        child: Align(
          // Align the content to the top center of the available space.
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            // SingleChildScrollView allows content to scroll vertically if
            // it doesn't fit on the screen (useful for small devices).
            child: Column(
              // Center children along the main axis of the column. Note that
              // we also use Align widgets for left/right alignment of parts.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo section: we also align this to the top center.
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/logo.png', // Local image asset path
                    height: 220, // Image height in logical pixels
                  ),
                ),

                // A SizedBox adds vertical spacing. This moves the rest of the
                // widgets lower on the screen so the logo has breathing room.
                const SizedBox(height: 150),

                // Welcome text aligned to the left edge of the content area.
                Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Username input field. TextField shows a Material input box.
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username or Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 20),

                // Password input field with obscureText to hide entered text.
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 10),

                // A 'Forgot Password?' link aligned to the left. This is a
                // TextButton with an empty onPressed — replace with navigation
                // or recovery flow as needed.
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 137, 250),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Login button: full width, rounded corners, and custom color.
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: implement login logic (validate input, call API)
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 9, 131, 231),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Inline contact row: a short prompt and a link-style button.
                // Using Row with mainAxisSize.min prevents the row from filling
                // the horizontal space; it will only be as wide as its content.
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Small prompt text shown before the contact button.
                      const Text('Having Problem?'),
                      // The contact button — replace the empty onPressed with
                      // the action you want (open email, navigate, etc.).
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Contact Institution',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 137, 250),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
