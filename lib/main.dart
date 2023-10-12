import 'dart:async';

import 'package:flutter/material.dart';

import 'layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:SplashScreen.routeName ,
      routes:{
        SplashScreen.routeName:(context)=>SplashScreen(),
        HomeLayout.routeName:(context)=>HomeLayout(),


      },

    );
  }
}
class SplashScreen extends StatefulWidget {
  static const String routeName= "splash";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => HomeLayout()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset("assets/images/logo.png",
            width: double.infinity,
            fit: BoxFit.fill,)),
    );
  }
}
