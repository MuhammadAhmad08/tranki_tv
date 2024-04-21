import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tranki_tv/screens/loremScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    // Navigate to the next screen after 2 seconds
    Timer(const Duration(seconds: 10), () {
     Navigator.push(context, MaterialPageRoute(builder: (context)=> loremScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        decoration:const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Color.fromARGB(255, 209, 117, 143), Color.fromARGB(255, 236, 172, 126),
          ],
          ),
       ),
        child: Center(child: Image.asset('assets/images/Logo-removebg-preview 1.png')),
        
      ),
    );
  }
}