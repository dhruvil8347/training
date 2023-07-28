import 'package:flutter/material.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              "assets/images/undraw.png",),
              height: 250,width: 900,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign up",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration:
                InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: -10),
                    icon: Icon(Icons.alternate_email_outlined), hintText: "Eamil ID"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: -10),
                    icon: Icon(Icons.person), hintText: "Full Name"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration:
                InputDecoration(icon: Icon(Icons.phone), hintText: "Mobile"),
              ),
            ),




            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                    "By signing up, you're agree to our"),


                TextButton(onPressed: () {}, child: Text(
                    style: TextStyle(
                        fontSize:12,
                        fontWeight: FontWeight.bold),"Term & Conditions")),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: Size(300, 45),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  onPressed: (){

                  }, child: Text("Contiune")),
            ),
            // Text(style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     color: Colors.grey),"--------------------------------------or--------------------------------------"),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ElevatedButton(onPressed: (){},
            //
            //       style: ElevatedButton.styleFrom(
            //           fixedSize: Size.fromWidth(300),
            //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            //           primary: Colors.black38),
            //       child: Text(
            //           style: TextStyle(
            //
            //               fontWeight: FontWeight.bold),"Login with Google")),
            // ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                      "Joined us before?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  }, child: Text("Login"))
                ],
              ),
            ),

          ],

        ),
      ),
    );
  }
}
