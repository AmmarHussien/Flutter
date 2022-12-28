import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
            "First App"
        ),
        actions:  [
          IconButton(
              onPressed: (){
                if (kDebugMode) {
                  print(" Hello world");
                }
              },
              icon: const Icon(
                  Icons.home
              )
          ),
          IconButton(
              onPressed: (){
                if (kDebugMode) {
                  print(" Hello world");
                }
              },
              icon: const Icon(
                  Icons.notification_add
              )
          ),
        ],
      ),
      body: Column(
        children:  [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                )
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children:  [
                  const Image(
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/649725910/photo/tree-on-grassy-field-against-cloudy-sky.jpg?s=612x612&w=0&k=20&c=plFwU2_Rtw5o9ik90eTGURS_59pQ2heMocIvWOZeqio="
                    ),
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    //width: double.infinity,
                    color: Colors.black.withOpacity(.7),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20
                    ),
                    child: const Text(
                        "Hello",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  )
                ]
              ),
            ),
          ),
        ],
      )
    );
  }
}
