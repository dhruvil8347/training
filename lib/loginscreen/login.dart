import 'package:flutter/material.dart';
import 'package:trining/loginscreen/sign_up.dart';

import 'forgotpassword.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              "assets/images/log.png",),
              height: 250,width: 500,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Login",
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
                    icon: Icon(Icons.alternate_email_outlined),
                    hintText: "Eamil ID"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: -10),
                    icon: Icon(Icons.lock_outline_sharp),
                    hintText: "Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),



              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FOrgotPassword(),));
                }, child: Text(
                    style: TextStyle(

                        fontWeight: FontWeight.bold),"Forgot Password?")),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 45),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  onPressed: (){}, child: Text("Login")),
            ),
            Text(style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey),"---------------------------    OR    ---------------------------"),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){},

                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(300,45),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      primary: Colors.white70),
                  child: Text(
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      "Login with Google")),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                    "New to Logistics? "),
                TextButton(onPressed: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => SignUp(),));

                }, child: Text("Register"))
              ],
            ),

          ],

        ),
      ),
    );
  }
}
