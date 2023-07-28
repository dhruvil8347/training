import 'package:flutter/material.dart';


class sata extends StatefulWidget {
  const sata({Key? key}) : super(key: key);

  @override
  State<sata> createState() => _sataState();
}

class _sataState extends State<sata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title:Text(style: TextStyle(color: Colors.black),"Memory & Storage"),

          actions: [
            IconButton(onPressed: (){},
            color: Colors.black,
            icon: Icon(Icons.search),),

              IconButton(onPressed: (){},
              color: Colors.black,icon: Icon(Icons.shopping_cart),),
    ]

      ),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              elevation: 2,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child:


              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 50),
                              child: Text(style: TextStyle(fontSize: 20),"EVO Plus MicroSDXC "),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 58),
                              child: Text(style: TextStyle(fontSize: 20),"Memory Card 64GB "),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 165),
                              child: Text(style: TextStyle(color: Colors.blue,),"save \u{20B9}1260"),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 165),
                              child: Text(style: TextStyle(fontSize: 18,),"\u{20B9}639.00"),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(top: 10,),
                              child: RichText(
                                text: TextSpan(text: "Storage",style: TextStyle(color: Colors.black),
                                    children: const <TextSpan>[
                                      TextSpan(text: "    64GB    128GB     256GB    512GB   ",style: TextStyle(color: Colors.grey))
                                    ]
                                ),),

                            ),

                          ]
                      ),
                      Image.asset(
                          height: 100,
                          width: 100,
                          "assets/images/sata.png"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,right: 222),
                    child: Text("Paytm Offer"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 25,right: 10),
                    child: Text(
                        style: TextStyle(color: Colors.grey),"Get upto \u{20B9}2500 cashback on a minimum transction of \u{20B9}7500 using Paytm Wallet/Postpaid."),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 120),
                    child: Text(style: TextStyle(color: Colors.grey),"Mini assured cashback of \u{20B9}250"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 235,bottom: 10),
                    child: Text(
                        style: TextStyle(
                            color: Colors.blue,decoration: TextDecoration.underline),"Learn More"),
                  )
                ],
              ),
            ),
          ),




        ],
      )

    );
  }
}