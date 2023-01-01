import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

 static  var emailController = TextEditingController();
 static  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(),
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Center(
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:  [
               const Text(
                 'Login',
                 style: TextStyle(
                   fontSize: 50,
                   color: Colors.red,
                   fontWeight: FontWeight.bold
                 ),
               ),
               const SizedBox(
                 height: 40,
               ),
               TextFormField(
                 controller: emailController,
                 keyboardType: TextInputType.emailAddress ,
                 onFieldSubmitted: (String value){
                   print(value);
                 },
                 onChanged: ( String value ){
                   print(value);
                 },
                 decoration: const InputDecoration(
                   //hintText: 'Email Address',
                   labelText: 'Email Address',
                   border: OutlineInputBorder(),
                   prefixIcon:Icon(
                     Icons.email
                   ),
                 ),
               ),
               const SizedBox(
                 height: 20,
               ),
               TextFormField(
                 controller: passwordController,
                 keyboardType: TextInputType.visiblePassword ,
                 obscureText: true,
                 onFieldSubmitted: (String value){
                   print(value);
                 },
                 onChanged: ( String value ){
                   print(value);
                 },
                 decoration: const InputDecoration(
                   //hintText: 'Password',
                     labelText: 'Password',
                     border: OutlineInputBorder(),
                   prefixIcon: Icon(
                     Icons.key
                   ),
                   suffixIcon: Icon(
                     Icons.remove_red_eye_outlined
                   )
                 ),
               ),
               const SizedBox(
                 height: 20,
               ),
               defaultButton(
                   text: 'login',
                   function: (){
                     if (kDebugMode) {
                       print(emailController.text);
                       print(passwordController.text);
                     }
                   },
               ),
               const SizedBox(
                 height: 20,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text(
                     'Don\'t have an account',
                   ),
                   TextButton (
                       onPressed: (){ },
                       child: const Text(
                         'Register Now'
                       ),
                   ),
                 ],
               )
             ],
           ),
         ),
       ),
     ),
   );
  }

}