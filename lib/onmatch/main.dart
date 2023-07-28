import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trining/onmatch/splash.dart';

import 'login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "on match",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      home: const Splash(),
    );
  }
}

class OnMatch extends StatefulWidget {
  const OnMatch({Key? key}) : super(key: key);

  @override
  State<OnMatch> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<OnMatch> {
  var _formkey = GlobalKey<FormState>();
  var isLoading = false;

  void submit() {
    final isVaild = _formkey.currentState!.validate();
    if (!isVaild) {
      print("false");
      return;
    }
    else( Navigator.push(context, MaterialPageRoute(builder: (context) => OnmatchLogin(),)));
    _formkey.currentState!.save();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Image.asset("assets/images/Rectangle 13.png"),
                foregroundDecoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Group 801.png"),
                      scale: 1.5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF003C30),
                            fontWeight: FontWeight.w600),
                        "Create an Account!"),
                    const Text("Let's get started",
                        style: TextStyle(fontSize: 12)),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1.0,
                                color: Colors.black12,
                                offset: Offset(0.0, 0.0))
                          ]),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (value){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OnmatchLogin(),));
                        },
                        onChanged: (value) {
                          setState(() {
                            return null;
                          });
                        },
                        validator: (value)
                        {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some Email';

                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            isDense: false,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 14,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1.0,
                                color: Colors.black12,
                                offset: Offset(0.0, 0.0))
                          ]),
                      child: TextFormField(
                        validator: (value) {
                            if (value == null || value.isEmpty) {
                            return 'Please enter password';

                            }
                            return null;
                            },
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            isDense: false,
                            contentPadding: EdgeInsets.only(left: 10),
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(fontSize: 12)),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                        onPressed: ()  => submit(

                        ),
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));



                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF003C30),
                          fixedSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        
                        
                        child: const Text(
                          "Sign up ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF1FA3F)),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(style: TextStyle(color: Colors.grey), "Or"),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size.fromHeight(45),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            label: const Text("Sign up via LinkedIn",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400)),
                            icon:
                                Image.asset("assets/images/linkid.png", scale: 4),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size.fromHeight(45),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            label: const Text("Sign up via Xing",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400)),
                            icon: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Image.asset("assets/images/Group.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size.fromHeight(45),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            label: const Text("Sign up via Facebook",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400)),
                            icon: Image.asset("assets/images/facebook.png",
                                scale: 1),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size.fromHeight(45),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            label: const Text("Sign up via Google",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400)),
                            icon: Image.asset("assets/images/G.png", scale: 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        label: const Text("Sign up via Apple",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                                fontWeight: FontWeight.w400)),
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Image.asset("assets/images/apple.png"),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("Already have an account?",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                        TextButton(
                            onPressed: () {},
                            
                            child: const Text(
                                style:
                                    TextStyle(color: Colors.black, fontSize: 12),
                                "Login"))
                      ],
                    )
                  ],
                ),
              ),
            ],


          ),
        ),
      ),
    );
  }
}
