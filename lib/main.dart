import 'package:flutter/material.dart';
// import 'package:uts_2021110077/screens/cart_screen.dart';
import 'package:uts_2021110077/screens/login_screen.dart';
// import 'package:uts_2021110077/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 4, 87, 98)),
        useMaterial3: true,
        fontFamily: 'Poppins'
      ),
      home: const LoginScreen(),
    );
  }
}