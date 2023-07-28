import 'package:flutter/material.dart';

class Step13 extends StatefulWidget {
  final void Function()? onTab;
  const Step13({Key? key, this.onTab}) : super(key: key);

  @override
  State<Step13> createState() => _Step13State();
}

class _Step13State extends State<Step13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [



            Padding(
              padding: const EdgeInsets.only(top: 10, right: 150),
              child: Text("Review Your Profile",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003C30)),),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Container(
                width: 320,
                height: 135,
                decoration: BoxDecoration(
                    color: Colors.white
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(width: 20,),

                          Image.asset("assets/images/pic.png",scale: 4),
                          SizedBox(width: 25,),

                          Padding(
                            padding: const EdgeInsets.only(top: 15,),
                            child: Text("John Doe",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500)),
                          ),
                          SizedBox(width: 8,),


                        ],
                      ),
                    ),

                   SizedBox(
                     height: 10,
                   ),


                   Row(
                     children: [
                       SizedBox(
                         width: 10,
                       ),
                       Image.asset("assets/images/email.png",scale: 4),
                       SizedBox(
                         width: 10,
                       ),
                       Text("johndoe@gmail.com",style: TextStyle(
                           fontSize: 10,
                       fontWeight: FontWeight.w500,
                         color: Colors.grey,
                       )),
                       SizedBox(
                         width: 25,
                       ),

                       Image.asset("assets/images/phone1.png",scale: 4),
                       SizedBox(
                         width: 10,
                       ),
                       Text("+1 475 965 789",style: TextStyle(
                           fontSize: 10,
                           color: Colors.grey,
                       fontWeight: FontWeight.w500
                       )),
                     ],
                   ),

                    SizedBox(
                      height: 10,
                    ),


                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),

                        Image.asset("assets/images/location.png",scale: 4),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Berlin, Germany",style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                      ],
                    ),

                  ],
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,right: 210),
              child: Text("Description",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500)),
            ),



            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 180,
                width: 330,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(
                      fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                  ),

                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(blurRadius: 1.0, color: Colors.black12)
                    ]),





              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10, right: 170),
              child: Text("Work Experience ",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 12)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 320,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("UI UX Designer",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400)),
                          SizedBox(width: 150,),


                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right: 25,top: 1),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text("Senior UI UX Designer at Softrave - LA ",style: TextStyle(fontSize: 10)),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 185),
                      child: Text("April 2012 - July 2016",style: TextStyle(fontSize: 10)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:10 , right: 210),
                      child: Text("Description"),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10,),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                        style: TextStyle(fontSize: 8 ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("UI UX Designer",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400)),
                          SizedBox(width: 150,),


                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right: 25,top: 1),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text("Senior UI UX Designer at Softrave - LA ",style: TextStyle(fontSize: 10)),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 185),
                      child: Text("April 2012 - July 2016",style: TextStyle(fontSize: 10)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:10 , right: 210),
                      child: Text("Description"),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10,),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                        style: TextStyle(fontSize: 8 ),
                      ),
                    ),

                  ],
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 10,right: 210),
              child: Text("Education",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500)),
            ),

            Container(
              width: 320,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Graduation In Computer Science",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                        SizedBox(width: 35,),



                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(right: 25,top: 1),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("New York School Of Computer Science - New York ",style: TextStyle(fontSize: 10)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 185),
                    child: Text("April 2012 - July 2016",style: TextStyle(fontSize: 10)),
                  ),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 12,right: 250),
              child: Text("Skills",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 80,
                width: 330,

                decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
                child:Row(
                  children: [
                    SizedBox(
                      width: 10,
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
                            style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Photoshop")),

                    SizedBox(
                    width: 10,
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
                      width: 10,
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
                )


              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 12,right: 230),
              child: Text("Interest",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                  height: 80,
                  width: 330,

                  decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
                  child:Row(
                    children: [
                      SizedBox(
                        width: 10,
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
                        width: 10,
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
                        width: 10,
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
                        width: 5,
                      ),

                      ElevatedButton(
                          onPressed: widget.onTab,
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size.fromHeight(40),
                            backgroundColor: const Color(0xFF003C30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          child: Text(
                              style: TextStyle(color: Color(0xFFF1FA3F),fontSize: 9), "Hunting")),

                    ],
                  )


              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top: 10,left: 200),
              child: ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Step13(),));

                  },
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
