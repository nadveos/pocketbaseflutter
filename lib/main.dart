import 'package:flutter/material.dart';
import 'package:loginpocketbase/src/pages/login_page.dart';
import 'package:loginpocketbase/src/pages/register_page.dart';
import 'package:loginpocketbase/src/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screens',
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginPage(),
        
      },
    );
  }
}
