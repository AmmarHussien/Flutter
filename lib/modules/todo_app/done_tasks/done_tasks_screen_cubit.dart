import 'package:flutter/material.dart';

class DoneTasksScreenCubit extends StatelessWidget {
  const DoneTasksScreenCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Text(
        'Done Tasks',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
