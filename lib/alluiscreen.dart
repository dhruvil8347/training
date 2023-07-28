import 'package:flutter/material.dart';
import 'package:trining/loginscreen/sign_up.dart';
import 'package:trining/onmatch/main.dart';
import 'package:trining/stackscreen/main.dart';
import 'package:trining/tabbarscreen/main.dart';

import 'bmicalculatorscreen/main.dart';
import 'bottomnavigation/main.dart';
import 'datapassing/main.dart';
import 'girdviewscreen/main.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginState();
}

class _LoginState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 30,
            children: [

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
              }, child: Text("Login UI screen")),

              ElevatedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => Stackuiscreen(),));
              }, child: Text("Stack")),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GirdviewScreen(),));
              }, child: Text("Gridview")),


              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnMatch(),));
              }, child: Text("onMatch ui")),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tabbar(),));
              }, child: Text("Tabbar screen")),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Datapassing(),));
              }, child: Text("Data passing")),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BmiScreen(),));
              }, child: Text("Bmi Calculater ui")),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation(),));
              }, child: Text("Bottom Navigation")),


            ]



        ),
      ),


      /*Column(
        children: [




        ],
      ),*/
    );
  }
}
