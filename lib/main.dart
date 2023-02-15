// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries_app/screens/bottomNavigation.dart';
import 'package:groceries_app/screens/details.dart';
import 'package:groceries_app/screens/login.dart';
import 'package:groceries_app/screens/register.dart';
import 'package:groceries_app/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/register': (context) => Register(),
        '/login': (context) => Login(),
        '/main': (context) => MainPage(),
        '/details': (context) => FoodDetails(),
      },
    );
  }
}
