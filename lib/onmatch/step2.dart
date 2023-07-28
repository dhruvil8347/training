import 'package:flutter/material.dart';


class Step2 extends StatefulWidget {
  final void Function()? onTab;
  const Step2({Key? key, this.onTab }) : super(key: key);

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SingleChildScrollView(


        child: Column(
            children: [

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(textAlign: TextAlign.start,
                    "Would you like to add a phone number & email to your profile?",
                    style: TextStyle(color: Color(0xFF003C30),
                      fontWeight: FontWeight.w500,
                      fontSize: 13

                    )
                ),
              ),


              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Email*",style: TextStyle(fontSize: 12))
                ],
              ),

              Row(
                children: [
                  SizedBox(width: 22,),
                  Text("Only provided to employers you apply or respond to",style: TextStyle(fontSize: 8)),
                ],
              ),

              SizedBox(height: 5,),

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
                      hintText: "e.g Johndoe@gmail.com",
                      hintStyle: TextStyle(fontSize: 10)),
                ),
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  SizedBox(width: 22,),

                  Text("Phone Number*",style: TextStyle(fontSize: 12)),
                ],
              ),

              Row(
                children: [
                  SizedBox(width: 22,),
                  Text("Only provided to employers you apply or respond to",style: TextStyle(fontSize: 8)),
                ],
              ),
              SizedBox(height: 5,),

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
                      hintText: "e.g +1 125 965 4756",
                      hintStyle: TextStyle(fontSize: 10)),
                ),
              ),

              SizedBox(
                height: 20,

              ),


              SizedBox(
                height: 10,
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
