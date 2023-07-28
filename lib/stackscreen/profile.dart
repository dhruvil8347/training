import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120,left: 20),
            child: Transform(transform: Matrix4.skewY(3),
              child: Container(
                height: 80,
                width: 300,
                color: Colors.pink,

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 160,left: 125),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                height: 50,
                width: 50,
                "assets/images/avtar.png",

              ),

            ),
            
            
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 150,left: 200),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.camera_alt
              ),
            ),
          ),


            Column(children: [

              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Applied ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    Text("Reviewed ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    Text("Contacted ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("28",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  Text("45",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  Text("128",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),


              Padding(
                padding: const EdgeInsets.only(top: 30,left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize:(18)),"Complate Profile"),
                  ],
                ),
              ),
              Row(
                children: [
                 Stack(
                   children: [


                     Padding(
                       padding: const EdgeInsets.only(left: 40,top: 20),
                       child: Container(
                         height: 150,
                         width: 120,
                         decoration: BoxDecoration(
                             color: Colors.lightBlueAccent,
                             borderRadius: BorderRadius.circular(20)),

                       ),
                     ),

                     const Padding(
                       padding: EdgeInsets.only(top: 80,left: 50),
                       child:
                       
                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                               style: TextStyle(color: Colors.black54),
                               "Education"),
                          
                           Padding(
                             padding: EdgeInsets.only(top: 10),
                             child: Text("02 Step"),
                           ),
                           Row(
                             children: [
                               Text(style: TextStyle(decoration:  TextDecoration.underline),"Left"),
                               Padding(
                                 padding: EdgeInsets.only(left: 50),
                                 child: Icon(Icons.arrow_forward_rounded),
                               )
                             ],
                           ),
                           
                         ],
                       ),
                       
                       
                     ),

                     Padding(
                       padding: const EdgeInsets.only(top: 40,left: 50),
                       child: Container(
                         width: 30,
                         height: 30,

                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(6)),
                         child: Icon(color: Colors.lightBlueAccent,Icons.school),
                       ),
                     ),
                   ],
                 ),


                  Stack(children: [



                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 25),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(15)),
                      ),



                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80,left: 35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              style: TextStyle(color: Colors.black54),
                              "Professional"),
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("04 Step"),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(style: TextStyle(decoration: TextDecoration.underline),"Left"),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Icon(Icons.arrow_forward_rounded),
                              ),
                            ],
                          )
                        ],
                      ),
                      
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 35,top: 40),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),

                        child:Icon(color: Colors.orangeAccent,Icons.shopping_bag_rounded),

                      ),
                    ),
                  ],)
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(onPressed: (){},

                    child: Text(
                        style: TextStyle(
                          color: Colors.black,
                            decoration: TextDecoration.underline),"Buy Pro \$23.49")),
              )
            ],)



         ],
      )
    );
  }
}
