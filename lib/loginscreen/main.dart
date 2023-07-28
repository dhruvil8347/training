import 'package:flutter/material.dart';
import 'package:trining/loginscreen/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "star",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SignUp(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
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
              const Image(image: AssetImage(
              "assets/images/log.png",),
                height: 250,width: 500,),
            const Align(
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration:
                    InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: -10),
                        icon: Icon(Icons.alternate_email_outlined),
                        hintText: "Eamil ID"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
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
                child: TextButton(onPressed: () {}, child: const Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold),"Forgot Password?")),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                  onPressed: (){}, child: const Text("Login")),
            ),
            const Text(style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey),"---------------------------    OR    ---------------------------"),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){},

                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300,45),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      primary: Colors.white70),
                  child: const Text(
                      style: TextStyle(
                        color: Colors.black54,
                          fontWeight: FontWeight.bold),
                      "Login with Google")),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      color: Colors.grey),
                    "New to Logistics? "),
                TextButton(onPressed: (){}, child: const Text("Register"))
              ],
            ),

          ],

        ),
      ),
    );
  }
}
