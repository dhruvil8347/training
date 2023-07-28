import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/hat.png"),
                    maxRadius: 35,

                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 55,top: 45),
                child: Container(
                  width: 20,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/plus.png"),
                    backgroundColor: Colors.white,

                  ),
                ),
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 20),
                    child: Text(style: TextStyle(fontSize: 18),"My Status"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 90),
                    child: Text(style: TextStyle(color: Colors.grey),"Tap to add status update"),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 110),
                    child: Text(style: TextStyle(color: Colors.grey),"Recent updates"),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  

                  
                  Padding(
                    padding: const EdgeInsets.only(top: 550,left: 280),
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,onPressed: (){} ,
                      child: Icon(Icons.camera,
                        color: Colors.black,
                      ),),
                  ),
                ],
              )
            ],
          )
          
        // Card(
        // elevation: 1,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        // color: Colors.white,
        // shadowColor: Colors.black,
        //
        //  child: Column(
        //    crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Row(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: CircleAvatar(
        //               backgroundImage: AssetImage("assets/images/hat.png"),
        //               maxRadius: 35,
        //             ),
        //           ),
        //
        //
        //           Padding(
        //             padding: const EdgeInsets.only(left: 10),
        //             child: Text(style: TextStyle(fontSize: 16),"My Status"),
        //           ),
        //         ],
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 90,bottom: 10),
        //         child: Text(style: TextStyle(color: Colors.grey),"Tap to add Status update"),
        //       )
        //     ],
        //   ),
        //
        // ),

          
        ],
      ),
    );
  }
}
