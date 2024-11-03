import 'package:flutter/material.dart';
import 'package:greenybeenew/screens/login_screen.dart';

void main(){
  runApp(const GreenyBeeApp());
}
class GreenyBeeApp extends StatelessWidget {
  const GreenyBeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
