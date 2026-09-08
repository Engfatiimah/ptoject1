import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import '../widgets/event_card.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://mvdswnpgcivzvedfznfa.supabase.co",
    publishableKey: "sb_publishable_tvFO-FX3r6BvOHz7v-bDGw_hoifnAhe",
  );

  runApp(MyApp());
}


final supabase = Supabase.instance.client;

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