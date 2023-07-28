import 'package:flutter/material.dart';


class Step9 extends StatefulWidget {
  final void Function()? onTab;
  const Step9({Key? key,this.onTab}) : super(key: key);

  @override
  State<Step9> createState() => _Step9State();
}

class _Step9State extends State<Step9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [




            Padding(
              padding: const EdgeInsets.only(top: 10, right: 120),
              child: Text("What are your Interest?",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003C30)),),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 88),
              child: Text("We recommend adding at least 6 Interest",
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
                        hintText: "Interest",
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
                    icon: Icon(Icons.add,size: 12),
                    label: Text("Add",style: TextStyle(fontSize: 10),))
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10,right: 220),
              child: Text("Recommended",style: TextStyle(fontSize: 10),),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [


                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size.fromHeight(45),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),


                  ),
                  onPressed: (){},

                  child: Text("+ Book Reading",style: TextStyle(fontSize: 9,color: Color(0xFF003C30))),
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

                  child: Text("+ Fitness",style: TextStyle(fontSize: 9,color: Color(0xFF003C30))),
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

                  child: Text("+ Automobile",style: TextStyle(fontSize: 9,color: Color(0xFF003C30))),
                ),

                 SizedBox(
                   width: 20,
                 )

              ],
            ),


            Padding(
              padding: const EdgeInsets.only(top: 10,right: 220),
              child: Text("Your Interests",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12)),
            ),

            SizedBox(
              height: 5,
            ),

            Row(
              children: [



                SizedBox(
                  width: 20,
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
                        style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Graphics")),

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
                        style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Learning")),

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
                        style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Singing")),

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
                        style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Hunting")),


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
