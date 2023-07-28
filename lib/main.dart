import 'package:flutter/material.dart';
import 'package:trining/alluiscreen.dart';

import 'apicalling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Trining",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  List<ElevatedButton> application = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
        title: Container(
          width: 350,
          height: 120,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/images/eq.png", scale: 4),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text("Equitysoft technologies",
                            style: TextStyle(color: Colors.black))),
                  ),
                  Container(
                      height: 40,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/profile.png", scale: 15),
                          Center(
                              child: Text("Dhruvil kumbhani",
                                  style: TextStyle(color: Colors.black))),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
        /* actions: [
          Container(
            width: 20,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white
            ),
          )
        ],*/
      ),
      body:
      Column(
        children: [


/*       SizedBox(height: 120,),

          Container(

            height: 120,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular()
            ),

          ),*/
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Loginscreen(),
                      ));
                },
                child: Container(
                  height: 80,
                  width: 320,
                  decoration: BoxDecoration(
                    /*  color: Colors.black45,*/
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 1.2,
                          blurStyle: BlurStyle.outer

                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          gradient: LinearGradient(
                              colors: [Colors.deepOrange, Colors.pink]),
                        ),
                        child: Center(
                            child: Text("1",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18))),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("UI (user interface)"),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllApicalling(),
                          ));
                    },
                    child: Container(
                      height: 80,
                      width: 320,
                      decoration: BoxDecoration(
                        /*  color: Colors.black45,*/
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 1.2,
                                blurStyle: BlurStyle.outer

                            )
                          ]),
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              gradient: LinearGradient(
                                  colors: [Colors.deepOrange, Colors.pink]),
                            ),
                            child: Center(
                                child: Text("2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18))),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("APi Calling"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
