import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/ui/home_page.dart';
import 'package:instagram_clone_ui/ui/login_page.dart';
import 'package:instagram_clone_ui/ui/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
        RegisterPage.routeName: (context) => const RegisterPage(),
      },
    );
  }
}
