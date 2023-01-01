

import 'package:flutter/material.dart';

import 'modules/bmi/bmi_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/users/users_screen.dart';

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
      home:LoginScreen()
    );
   // throw UnimplementedError();
  }

}
