import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
     await dotenv.load();


  await Supabase.initialize(
    url: dotenv.get('url-dataBase'),
    publishableKey: dotenv.get('publishableKey-dataBase'),
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