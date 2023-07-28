import 'package:flutter/material.dart';


class Step10 extends StatefulWidget {
  final void Function()? onTab;
  const Step10({Key? key,this.onTab}) : super(key: key);

  @override
  State<Step10> createState() => _Step10State();
}

class _Step10State extends State<Step10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SingleChildScrollView(
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.only(top: 10, right: 50),
              child: Text("What Certification Do You have?",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF003C30)),),
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
                        hintText: "Add Certificate",
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
