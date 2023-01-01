import 'package:flutter/material.dart';

Widget defaultButton({

  double width = double.infinity ,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0,
  required Function function,
  required String text,

}) => Container(
  width: width,
  decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(
        radius,
    )
  ),
  child: MaterialButton(
    onPressed: function(),
    child:  Text(
      isUpperCase ? text.toUpperCase() : text,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    ),
  ),
);