import 'dart:async';

import 'package:flutter/material.dart';

import '../loginscreen/main.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomepage(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: Image.asset("assets/images/green.png", fit: BoxFit.fitHeight,),
        foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Group 801.png"), scale: 1.5),
        ),
      ),

    );
  }
}
