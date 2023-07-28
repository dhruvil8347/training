import 'package:flutter/material.dart';


class Step8 extends StatefulWidget {
  final void Function()? onTab;
  const Step8({Key? key,this.onTab}) : super(key: key);

  @override
  State<Step8> createState() => _Step8State();
}

class _Step8State extends State<Step8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 10, right: 80),
              child: Text("What are some of your skills?",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003C30)),),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 88),
              child: Text("We recommend adding at least 6 skills",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),),
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 20,),

                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: false,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: "Skill",
                        hintStyle: TextStyle(fontSize: 10)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF003C30),
                    fixedSize: const Size.fromHeight(45),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  ),
                    onPressed: (){}, 
                    icon: Icon(Icons.add,size: 12,color: Color(0xFFF1FA3F)),
                    label: Text("Add",style: TextStyle(fontSize: 10,color: Color(0xFFF1FA3F)),))
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10,right: 90),
              child: Text("Do you want to add any of these skills?",style: TextStyle(fontSize: 10),),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
              SizedBox(
                width: 20,
              ),

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size.fromHeight(45),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),


                ),
                onPressed: (){},

                child: Text("+ UI UX Designer",style: TextStyle(fontSize: 9,color: Color(0xFF003C30))),
              ),

              SizedBox(
                width: 8,
              ),

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size.fromHeight(45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),

                ),
                onPressed: (){},

                child: Text("+ Adobe Photoshop",style: TextStyle(fontSize: 9,color: Color(0xFF003C30))),
              ),

              SizedBox(
                width: 8,
              ),

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size.fromHeight(45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),

                ),
                onPressed: (){},

                child: Text("+ Figma",style: TextStyle(fontSize: 9,color: Color(0xFF003C30))),
              ),

              ],
            ),


            Padding(
              padding: const EdgeInsets.only(top: 10,right: 238),
              child: Text("Your Skills",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 12)),
            ),

            Row(
              children: [

                SizedBox(
                  width: 20,
                ),

                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Step8(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromHeight(40),
                      backgroundColor: const Color(0xFF003C30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Text(
                        style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Photoshop")),

                SizedBox(
                  width: 9,
                ),

                ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromHeight(40),
                      backgroundColor: const Color(0xFF003C30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Text(
                        style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Graphic Designing")),

                SizedBox(
                  width: 9,
                ),

                ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromHeight(40),
                      backgroundColor: const Color(0xFF003C30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Text(
                        style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Adobe Xd")),


              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10,left: 200),
              child: ElevatedButton(
                  onPressed: widget.onTab,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(40),
                    backgroundColor: const Color(0xFF003C30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                      style: TextStyle(color: Color(0xFFF1FA3F)), "Contiune")),
            ),

          ],),
      ),
    );
  }
}
