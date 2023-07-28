import 'package:flutter/material.dart';
import 'package:trining/onmatch/step4.dart';

class Step3 extends StatefulWidget {

  final void Function()? onTab;
  const Step3({Key? key, this.onTab}) : super(key: key);


  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20,),
                  Text("What is your name?",
                      style: TextStyle(color: Color(0xFF003C30),
                          fontWeight: FontWeight.w500)),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20,),
                  Text("This helps match you with nearby jobs",
                      style: TextStyle(color: Color(0xFF003C30),
                          fontSize: 10,
                          fontWeight: FontWeight.w500)),

                ],
              ),


              SizedBox(
                height: 18,
              ),

              Row(
                children: [
                  SizedBox(width: 32,),
                  Text("Street Address",style: TextStyle(fontSize: 12))
                ],
              ),





              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1.0,
                          color: Colors.black12

                      )
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                      isDense: false,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "e.g 5 street",
                      hintStyle: TextStyle(fontSize: 10)),
                ),
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  SizedBox(width: 32,),

                  Text("City*",style: TextStyle(fontSize: 12)),
                ],
              ),




              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1.0,
                          color: Colors.black12

                      )
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                      isDense: false,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "e.g Berlin",
                      hintStyle: TextStyle(fontSize: 10)),
                ),
              ),

              SizedBox(
                height: 20,

              ),

              Row(
                children: [
                  SizedBox(width: 32,),

                  Text("Postal Code*",style: TextStyle(fontSize: 12)),
                ],
              ),




              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1.0,
                          color: Colors.black12

                      )
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                      isDense: false,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "e.g 456987",
                      hintStyle: TextStyle(fontSize: 10)),
                ),
              ),


              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: widget.onTab,
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(40),
                        backgroundColor: const Color(0xFF003C30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Text(style: TextStyle(color: Color(0xFFF1FA3F)),"Contiune")),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )

            ]),
      ),


    );

  }
}
