import 'package:flutter/material.dart';

class FOrgotPassword extends StatelessWidget {
  const FOrgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(
              "assets/images/undraw_lock.png",),
              height: 250,width: 500,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Align(alignment: Alignment.topLeft,
                      child: Text("Forgot",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Align(alignment: Alignment.topLeft,
                      child: Text(
                        "Password?",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text(style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey),
                          "Don't worry! it happens. please enter the address associted with your account"),
                    )
                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration:
                InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: -10),
                    icon: Icon(Icons.alternate_email_outlined), hintText: "Eamil ID / Mobile number"),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //
            //
            //
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: TextButton(onPressed: () {}, child: Text(
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold),"Forgot Password?")),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: Size(300, 45),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  onPressed: (){}, child: Text(style: TextStyle(
                  fontWeight: FontWeight.w400),"Submit")),
            ),


          ],

        ),
      ),
    );
  }
}
