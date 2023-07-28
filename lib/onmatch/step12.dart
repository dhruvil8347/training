import 'package:flutter/material.dart';

class step12 extends StatefulWidget {
  final void Function()? onTab;
  const step12({Key? key,this.onTab}) : super(key: key);

  @override
  State<step12> createState() => _step12State();
}

class _step12State extends State<step12> {

  String? choise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          children: [




            Padding(
              padding: const EdgeInsets.only(top: 10, right: 175,left: 50),
              child: Text("The Non-Goes",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003C30)),),
            ),



            SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,



                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Home Office",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),



                  Radio(
                      value: "home",
                      activeColor: Color(0xFF003C30),
                      groupValue: choise,
                      onChanged: (value)
                      {
                        setState(() {
                          choise = value.toString();
                        });
                      }

                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("20 hours a week",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),

                  SizedBox(
                    width: 127,
                  ),

                  Radio(
                      value: "time",
                      activeColor: Color(0xFF003C30),
                      groupValue: choise,
                      onChanged: (value)
                      {
                        setState(() {
                          choise = value.toString();
                        });
                      }

                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("More than 100 employee",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),

                  SizedBox(
                    width: 46,
                  ),

                  Radio(
                      value: "km",
                      activeColor: Color(0xFF003C30),
                      groupValue: choise,
                      onChanged: (value)
                      {
                        setState(() {
                          choise = value.toString();
                        });
                      }

                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Must be in Berlin Within 65 km",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),



                  Radio(
                      value: "Insurance",
                      activeColor: Color(0xFF003C30),
                      groupValue: choise,
                      onChanged: (value)
                      {
                        setState(() {
                          choise = value.toString();
                        });
                      }

                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Less then €150k Salary",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),



                  Radio(
                      value: "Salary",
                      activeColor: Color(0xFF003C30),

                      groupValue: choise,
                      onChanged: (value)
                      {
                        setState(() {
                          choise = value.toString();
                        });
                      }

                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
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
