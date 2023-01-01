import 'package:firstproject/users_screen.dart';
import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';
import 'bmi_screen.dart';
import 'counter_screen.dart';

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
      home:BmiScreen()
    );
   // throw UnimplementedError();
  }

}
