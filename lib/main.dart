import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'beranda_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Login dan Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => BerandaPage(), // Tambahkan rute untuk HomePage
      },
    );
  }
}
