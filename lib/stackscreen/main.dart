import 'package:flutter/material.dart';
import 'logn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "star",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Stackuiscreen(),
    );
  }
}

class Stackuiscreen extends StatefulWidget {
  const Stackuiscreen({Key? key}) : super(key: key);

  @override
  State<Stackuiscreen> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<Stackuiscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Transform(
                transform: Matrix4.skewY(3),
                child: Container(
                  margin: EdgeInsets.only(top: 100),
                  height: 75,
                  width: 350,
                  color: Colors.pink,
                ),
              ),
              Image(
                  image: AssetImage("assets/images/man2.png"),


                  height: 350,
                  width: 250),

              Transform(
                transform: Matrix4.skewY(3),
                child: Container(
                  height: 75,
                  width: 300,
                  margin: EdgeInsets.only(
                      left: 30,
                      top: 300),
                  color: Colors.cyan,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.centerLeft,
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  "Get Started"),
            ),
          ),
          Text(
              style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30, height:0.8),
              "Millons of people use to turn their ideas into reality."),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80,left: 20),
                child: Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,color: Colors.grey
                    ),
                    "Skip Now"),
              ),

                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 200,),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(25),
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
                        )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                      }, child: Text("Next"),

                    ),
                  )
            ],
          )
        ],
      ),
    ));
  }
}
