import 'package:flutter/material.dart';


class ssd extends StatefulWidget {
  const ssd({Key? key}) : super(key: key);

  @override
  State<ssd> createState() => _ssdState();
}

class _ssdState extends State<ssd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
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
           padding: const EdgeInsets.only(top: 30),
           child: Card(
             elevation: 2,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
               shadowColor: Colors.black,

               child: Column(
                 children: [
                   Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: Text(style: TextStyle(fontSize: 20),"portable SSD T7 shield USB"),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: Text(style: TextStyle(fontSize: 20),"3.2 1TB(Blue)"),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 10,top: 10),
                             child: Text(style: TextStyle(fontSize: 22),"\u{20B9}18699.00"),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 10, left: 15),
                             child: RichText(text:TextSpan(text: "Storage:",style: TextStyle(color: Colors.black),
                             children: <TextSpan>[
                               TextSpan(text: "   1TB     2TB",style: TextStyle(color: Colors.grey))
                             ]
                             ), ),
                           ),
                         ],
                       ),
                       Image.asset(
                           width: 100,
                           height: 100,
                           "assets/images/samssd.png"),
                     ],
                   ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 15,bottom: 15),
                   child: Text(style: TextStyle(color: Colors.grey),"Get assured up to Rs1500 cashback on Mobikwik Wallet"),
                 ),
                 ],
               )),
         ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                shadowColor: Colors.black,

                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(style: TextStyle(fontSize: 20),"portable SSD T7 shield USB"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(style: TextStyle(fontSize: 20),"3.2 500GB(red)"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 10),
                              child: Text(style: TextStyle(fontSize: 22),"\u{20B9}10099.00"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 15),
                              child: RichText(text:TextSpan(text: "Storage:",style: TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(text: "   1TB     2TB",style: TextStyle(color: Colors.grey))
                                  ]
                              ), ),
                            ),
                          ],
                        ),
                        Image.asset(
                            width: 100,
                            height: 100,
                            "assets/images/redssd.png"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 15,bottom: 15),
                      child: Text(style: TextStyle(color: Colors.grey),"Get assured up to Rs1500 cashback on Mobikwik Wallet"),
                    ),
                  ],
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                shadowColor: Colors.black,

                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(style: TextStyle(fontSize: 20),"portable SSD T7 shield USB"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(style: TextStyle(fontSize: 20),"3.2 1TB(Black)"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 10),
                              child: Text(style: TextStyle(fontSize: 22),"\u{20B9}18699.00"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 15),
                              child: RichText(text:TextSpan(text: "Storage:",style: TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(text: "   1TB     2TB",style: TextStyle(color: Colors.grey))
                                  ]
                              ), ),
                            ),
                          ],
                        ),
                        Image.asset(
                            width: 100,
                            height: 100,
                            "assets/images/blackssd.png"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 15,bottom: 15),
                      child: Text(style: TextStyle(color: Colors.grey),"Get assured up to Rs1500 cashback on Mobikwik Wallet"),
                    ),
                  ],
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                shadowColor: Colors.black,

                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(style: TextStyle(fontSize: 20),"portable SSD T7 shield USB"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(style: TextStyle(fontSize: 20),"3.2 1TB(Blue)"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 10),
                              child: Text(style: TextStyle(fontSize: 22),"\u{20B9}18699.00"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 15),
                              child: RichText(text:TextSpan(text: "Storage:",style: TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(text: "   1TB     2TB",style: TextStyle(color: Colors.grey))
                                  ]
                              ), ),
                            ),
                          ],
                        ),
                        Image.asset(
                            width: 100,
                            height: 100,
                            "assets/images/bssd.png"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 15,bottom: 15),
                      child: Text(style: TextStyle(color: Colors.grey),"Get assured up to Rs1500 cashback on Mobikwik Wallet"),
                    ),
                  ],
                )),
          ),


        ],
      ),
    );
  }
}
