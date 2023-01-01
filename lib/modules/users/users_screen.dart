import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';


class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});
   static List<UserModel> users =[
    UserModel(
        id: 1,
        name: "Ammar Hussein",
        phone: "01146082989"
    ),
     UserModel(
        id: 2,
        name: "Nanosa",
        phone: "01146082989"
    ),
     UserModel(
        id: 3,
        name: "Messi",
        phone: "01146082989"
    ),
     UserModel(
        id: 4,
        name: "Salah",
        phone: "01146082989"
    ),
     UserModel(
        id: 1,
        name: "Ammar Hussein",
        phone: "01146082989"
    ),
     UserModel(
        id: 2,
        name: "Nanosa",
        phone: "01146082989"
    ),
     UserModel(
        id: 3,
        name: "Messi",
        phone: "01146082989"
    ),
     UserModel(
        id: 4,
        name: "Salah",
        phone: "01146082989"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context , index ) => buildUserItem(users[index]),
          separatorBuilder: (context , index ) => Padding(
            padding: const EdgeInsets.only(
              left: 40,
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:  [
         CircleAvatar(
          radius: 20,
          child: Text(
            "${user.id}",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              user.phone,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
