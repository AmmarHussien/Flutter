import 'package:firstproject/home_screen.dart';
import 'package:firstproject/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Stateless
//stateful

//  class MyApp

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
    );
   // throw UnimplementedError();
  }

}
