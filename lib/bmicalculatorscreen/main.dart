import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:trining/bmicalculatorscreen/signup.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'bmi.dart';
import 'login.dart';
import 'other.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "signup",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BmiScreen(),
    );
  }
}

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<BmiScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  int selectedindex = 0;

  final _formkey = GlobalKey<FormState>();
  final formkey = GlobalKey<FormState>();
  var isLoading = false;
  var currentState = 1;

  final TextEditingController nameTEC = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void submit() {
    final isVaild = formkey.currentState?.validate() ?? false;
    if (!isVaild) {
      print("false");
    } else {
      // (_tabController.animateTo(selectedindex += 1));
      Navigator.push(context, MaterialPageRoute(builder: (context) => Bmi(),));
    }
    formkey.currentState!.save();
  }

  void fsubmit() {
    final isVaild = _formkey.currentState?.validate() ?? false;
    if (!isVaild) {
      print("false");
    }
    // if (_formkey.currentState?.validate() ?? false ) {
    //  (_tabController.animateTo(selectedindex += 1));
    //}
    else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Other(
              name:nameTEC.text.toString(),
              email:email.text.toString(),
              password: password.text.toString(),
            ),
          ));
      //(_tabController.animateTo(selectedindex += 1));
    }
    _formkey.currentState!.save();
  }

  void showToast(
      {required String msg, required MaterialColor backgroundColor}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: backgroundColor,
        textColor: Colors.white);
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedindex = _tabController.index;
      });
      print(_tabController.index.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                    width: 370,
                    height: 350,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.deepOrangeAccent
                    ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Signup to continue",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 290,
                ),
                Text("Or signup with"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.facebook),
                      label: Text("Facebook"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset("assets/images/googleplus.png",
                          scale: 20),
                      label: Text("Google"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFDD4D3F),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 40),
              child: Container(
                width: 280,
                height: 350,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1.2,
                          offset: Offset(0.0, 0.0),
                          color: Colors.black12),
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.deepOrange,
                        labelColor: Color(0xFF343434),
                        controller: _tabController,
                        tabs: const <Widget>[
                          Text(
                            style: TextStyle(color: Colors.black),
                            "SINGUP",
                          ),
                          Text(style: TextStyle(color: Colors.black), "LOGIN"),
                        ]),
                    Expanded(
                      child: TabBarView(controller: _tabController, children: [
                        Signup(formKey: formkey, nameController:nameTEC, email:email, password: password,),
                        LoginBmi(formKey: _formkey),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 570, left: 150),
                child: FloatingActionButton(
                    backgroundColor: Colors.pink,
                    child: const Icon(Icons.arrow_forward_rounded),
                    onPressed: () {
                      if (selectedindex == 0) {
                        print("TEC->${nameTEC.text}");
                        submit();
                      } else {
                        fsubmit();
                      }
                    }))
          ],
        ),
      ),
    );
  }
}
