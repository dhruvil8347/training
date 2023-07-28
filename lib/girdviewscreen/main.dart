import 'package:flutter/material.dart';
import 'package:trining/girdviewscreen/sata.dart';
import 'package:trining/girdviewscreen/ssd.dart';
import 'package:trining/girdviewscreen/usb.dart';

import 'card.dart';
import 'nvme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "grid view",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const GirdviewScreen(),
    );
  }
}

class GirdviewScreen extends StatefulWidget {
  const GirdviewScreen({Key? key}) : super(key: key);

  @override
  State<GirdviewScreen> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<GirdviewScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
      backgroundColor: Colors.white,
        title: const Text(
            style: TextStyle(
                color: Colors.black),
            "Memory & Storage"),
            leading: IconButton(
            onPressed: () {},
              color: Colors.black,
            icon: const Icon(
                Icons.arrow_back),),

        actions: [
          IconButton(onPressed: (){},
            color: Colors.black,
            icon: const Icon(Icons.search),),

          IconButton(onPressed: (){},
            color: Colors.black,icon: const Icon(Icons.shopping_cart),),

        ],

      ),
      body:

      Container(
        height: 350,

        child: Padding(
          padding: const EdgeInsets.only(top: 25,),
          child: Card(
            elevation: 5,
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 30,
              children: [

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const nvme(),));
                  },
                  child: Container(child: Column(
                    children: [
                      Image.asset("assets/images/nvme.png",
                        width: 80,
                        height: 80,
                      ),
                      const Text("Nvme m.2"),
                    ],
                  ),
                  ),
                ),


                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const sata(),));
                  },
                  child: Container(child: Column(
                    children: [
                      Image.asset(
                        "assets/images/sata.png",
                      width: 50,
                        height: 80,
                      ),
                      const Text("SATA SSD"),
                    ],
                  ),
                  ),
                ),

                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const card(),));
                },
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/card.png",
                          width: 50,
                          height: 80,
                        ),

                        const Text("Memory card"),
                      ],
                    ),
                  ),
                ),

                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ssd(),));
                },
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/ssd.png",
                        width: 50,
                          height: 80,
                        ),
                        const Text("Protable SSD")
                      ],
                    ),
                  ),
                ),

                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const usb(),));
                },
                  child: Container(child: Column(
                    children: [
                      Image.asset("assets/images/usb1.png",
                        ),
                      const Text("USB Flase Drive"),
                    ],

                  ),


                  ),
                ),



                // Container(color: arrColor[5],),


              ],

            ),
          ),
        ),
      ),
      
      

    );
  }
}
