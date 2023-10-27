import 'package:flutter/material.dart';
import 'package:minimal_social_app/auth/login_or_register.dart';
import 'package:minimal_social_app/theme/dark_mode.dart';
import 'package:minimal_social_app/theme/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
