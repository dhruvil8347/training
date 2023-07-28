import 'package:flutter/material.dart';


class Step11 extends StatefulWidget {
  final void Function()? onTab;
  const Step11({Key? key, this.onTab}) : super(key: key);

  @override
  State<Step11> createState() => _Step11State();
}

class _Step11State extends State<Step11> {

  String? choise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          children: [

            const Padding(
              padding: EdgeInsets.only(top: 10, right: 150,left: 40),
              child: Text("The Job Must Have",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003C30)),),
            ),



            const SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [const BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,



                children: [

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Home Office",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),



                  Radio(
                      value: "home",
                      activeColor: const Color(0xFF003C30),
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

            const SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [const BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("20 hours a week",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),

                  const SizedBox(
                    width: 127,
                  ),

                  Radio(
                      value: "time",
                      activeColor: const Color(0xFF003C30),
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

            const SizedBox(
              height: 10,),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [const BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Must be in Berlin Within 65 km",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),

                  const SizedBox(
                    width: 46,
                  ),

                  Radio(
                      value: "km",
                      activeColor: const Color(0xFF003C30),
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

            const SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [const BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Medical Insurance",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),

                  const SizedBox(
                    width: 112,
                  ),

                  Radio(
                      value: "Insurance",
                      activeColor: const Color(0xFF003C30),
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

            const SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: 300,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [const BoxShadow(blurRadius: 1.0, color: Colors.black12)]),


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("€150k Salary",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500)),
                  ),

                  const SizedBox(
                    width: 145,
                  ),

                  Radio(
                      value: "Salary",
                      activeColor: const Color(0xFF003C30),

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

            const SizedBox(
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
                  child: const Text(
                      style: TextStyle(color: Color(0xFFF1FA3F)), "Contiune")),
            ),

          ],),
      ),
    );
  }
}
