import 'package:flutter/material.dart';
import 'package:flutter_application_6/loginScreen.dart';
import 'package:flutter_application_6/regScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       height: double.infinity,
       width: double.infinity,
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Color(0xffB81736),
             Color(0xff281537),
           ]
         )
       ),
       child: Column(
         children: [
           const Padding(
             padding: EdgeInsets.only(top: 200.0),
             child: Image(image: AssetImage('assets/logo.png')),
           ),
           const SizedBox(
             height: 100,
           ),
           const Text('Welcome Back',style: TextStyle(
             fontSize: 30,
             color: Colors.white
           ),),
          const SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: const Center(child: Text('SIGN IN',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),),
            ),
          ),
           const SizedBox(height: 30,),
           GestureDetector(
             onTap: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const RegScreen()));
             },
             child: Container(
               height: 53,
               width: 320,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(30),
                 border: Border.all(color: Colors.white),
               ),
               child: const Center(child: Text('SIGN UP',style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.black
               ),),),
             ),
           ),
           const Spacer(),
           const Text('Login with Social Media',style: TextStyle(
               fontSize: 17,
               color: Color.fromARGB(255, 179, 20, 20)
           ),),//
          const SizedBox(height: 12,),
           const Image(image: AssetImage('assets/social.png'))
          ]
       ),
     ),

    );
  }
}
