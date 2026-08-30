import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import '../widgets/event_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF006C35),
          foregroundColor: Colors.white,
         
        ),
      ),
      home: const HomeScreen(),
    );
  }
}