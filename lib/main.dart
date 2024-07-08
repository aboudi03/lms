// main.dart
import 'package:flutter/material.dart';
import 'signin.dart';
import 'register.dart';
import 'admincreateuser.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set to false to remove debug banner

      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/signin': (context) => const SignIn(),
        '/register': (context) => const RegisterPage(),
        '/admincreateuser': (context) => const AdminCreateUser(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: const Text('Go to Sign In'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/admincreateuser');
              },
              child: const Text('Admin Panel'),
            ),
          ],
        ),
      ),
    );
  }
}
