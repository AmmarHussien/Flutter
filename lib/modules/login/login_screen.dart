import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

 static var emailController = TextEditingController();
 static var passwordController = TextEditingController();
 static final _formKey = GlobalKey<FormState>();
 static bool isPassword = true ;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Center(
         child: SingleChildScrollView(
           child: Form(
             key: LoginScreen._formKey,
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
                 defaultFormFiled(
                   controller: LoginScreen.emailController,
                   label: 'email',
                   prefix: Icons.email,
                   type: TextInputType.emailAddress,
                   validate: (String value){
                     if(value == null || value.isEmpty)
                       {
                         return 'email must not be empty';
                       }
                   },
                     onChange: (){},
                     onSubmit: (){},
                     onTap: (){}
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 defaultFormFiled(
                     controller: LoginScreen.passwordController,
                     label: 'password',
                     prefix: Icons.lock,
                     suffix: LoginScreen.isPassword ? Icons.visibility :  Icons.visibility_off,
                     type: TextInputType.number,
                     isPassword: LoginScreen.isPassword,
                     suffixPressed: (){
                       setState(() {
                         LoginScreen.isPassword = !LoginScreen.isPassword;
                       });
                     },
                     validate: (String value){
                       if(value.isEmpty)
                       {
                         return 'password must not be empty';
                       }
                     },
                     onChange: (){},
                     onSubmit: (){},
                     onTap: (){}
                 ),
                 const SizedBox(
                   height: 20,
                 ),

                 defaultButtonValidation(
                     onPressed: () {
                       if (LoginScreen._formKey.currentState!.validate()) {
                         print(LoginScreen.emailController.text);
                         print(LoginScreen.passwordController.text);
                         ScaffoldMessenger.of(context).showSnackBar(
                           const SnackBar(content: Text('Processing Data')),
                         );
                       }
                     },
                     text: 'Submit'
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
     ),
   );
  }
}