import 'package:flutter/material.dart';
import 'package:itech/screens/login_screen.dart';
// import 'package:itech/screens/naviation_screen.dart';
// import 'package:itech/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inovasi Technology',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color(0xFFEF6969)),
      home: const LoginScreen(),
    );
  }
}
