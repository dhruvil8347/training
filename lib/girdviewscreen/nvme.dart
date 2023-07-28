import 'package:flutter/material.dart';
class nvme extends StatefulWidget {
  const nvme({Key? key}) : super(key: key);

  @override
  State<nvme> createState() => _nvmeState();
}

class _nvmeState extends State<nvme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
            style: TextStyle(color: Colors.black),
            "Memory & Storang"),
        actions: [
          IconButton(onPressed: (){},
            color: Colors.black,
            icon: Icon(Icons.search),),
          IconButton(onPressed: (){},
            color: Colors.black,icon: Icon(Icons.shopping_cart),),
        ],
      ),

      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
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
          );
        },



         /* Padding(
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
                      padding: const EdgeInsets.only(top:40,right: 222),
                      child: Text("Paytm Cashback"),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 15,bottom: 15),
                      child: Text(style: TextStyle(color: Colors.grey),"Get upto \u{20B9}2500 cashback on a minimum transaction of  \u{20B9}7500 using Paytm Wallet ?Postpaid."),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 220,),
                      child: TextButton(onPressed: (){}, child: Text(
                          style: TextStyle(
                              color: Colors.blue,decoration: TextDecoration.underline),"Learn More")),
                    )
                  ],
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Card(
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child:
                Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 90),
                      child: Text(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),"980 NVMe M.2 SSD 250GB"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 222),
                      child: Text(style: TextStyle(color: Colors.blue),"Save \u{20B9}2950.00"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 245),
                      child: Text(style: TextStyle(
                          fontSize: 18
                      ),"\u{20B9}3799.00"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 265),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Storage "),
                          ),
                          // Text(style: TextStyle(color: Colors.grey),"250GB   500GB   1TB"),
                          // Image.asset(
                          //     height: 20,
                          //     width: 20,
                          //     "assets/images/nvme.png")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 222),
                      child: Text(style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),"Paytm Offer"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text(style: TextStyle(color: Colors.grey),"Get upto \u{20B9}2500 cashback on a minimum transaction of  \u{20B9}7500 using Paytm Wallet ?Postpaid."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 120),
                      child: Text(style: TextStyle(color: Colors.grey),"Mini assured cashback of \u{20B9}250"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: TextButton(onPressed: (){}, child: Text(style: TextStyle(
                          decoration: TextDecoration.underline, color: Colors.blue),"Learn More")),
                    ),

                  ],
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Card(
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child:
                Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 90),
                      child: Text(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),"980 NVMe M.2 SSD 250GB"),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 222),
                      child: Text(style: TextStyle(color: Colors.blue),"Save \u{20B9}2950.00"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 245),
                      child: Text(style: TextStyle(
                          fontSize: 18
                      ),"\u{20B9}3799.00"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 265),
                      child: Text("Storage"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 222),
                      child: Text(style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),"Paytm Offer"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text(style: TextStyle(color: Colors.grey),"Get upto \u{20B9}2500 cashback on a minimum transaction of  \u{20B9}7500 using Paytm Wallet ?Postpaid."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 120),
                      child: Text(style: TextStyle(color: Colors.grey),"Mini assured cashback of \u{20B9}250"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: TextButton(onPressed: (){}, child: Text(style: TextStyle(
                          decoration: TextDecoration.underline, color: Colors.blue),"Learn More")),
                    ),

                  ],
                )),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Card(
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child:
                Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 90),
                      child: Text(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),"980 NVMe M.2 SSD 250GB"),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 222),
                      child: Text(style: TextStyle(color: Colors.blue),"Save \u{20B9}2950.00"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 245),
                      child: Text(style: TextStyle(
                          fontSize: 18
                      ),"\u{20B9}3799.00"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 265),
                      child: Text("Storage"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 222),
                      child: Text(style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),"Paytm Offer"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text(style: TextStyle(color: Colors.grey),"Get upto \u{20B9}2500 cashback on a minimum transaction of  \u{20B9}7500 using Paytm Wallet ?Postpaid."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 120),
                      child: Text(style: TextStyle(color: Colors.grey),"Mini assured cashback of \u{20B9}250"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: TextButton(onPressed: (){}, child: Text(style: TextStyle(
                          decoration: TextDecoration.underline, color: Colors.blue),"Learn More")),
                    ),

                  ],
                )),
          ),
*/

      )
    );
  }
}
