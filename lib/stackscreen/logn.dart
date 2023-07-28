import 'package:flutter/material.dart';
import 'package:trining/stackscreen/profile.dart';


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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Padding(
          padding: EdgeInsets.only(top: 200,left: 25),
          child: Text(
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
              "Hey,"),
        ),

        const Padding(
          padding: EdgeInsets.only(left: 25,),
          child: Text(

              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),
              "Login Now."),

        ),



        Padding(
          padding: const EdgeInsets.only(left: 25 ,top: 12,bottom: 50),
          child: RichText(text: const TextSpan(
            text: "if you are new / ",
            style: TextStyle(color: Colors.grey),
            children: <TextSpan>[
              TextSpan(
                text: " Create New ",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16)
              )

            ]



          )),
        ),

        // Padding(
        //   padding: const EdgeInsets.only(top: 6,left: 40),
        //   child: Text(
        //   style: TextStyle(color: Colors.grey),
        //   "if you are new/"),
        // ),

        const Padding(
          padding: EdgeInsets.only(top: 10,left: 25),
          child: SizedBox(
            width: 300,
            height: 80,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderSide:BorderSide(width: 3) ),
              hintText: "Username"
            ),),
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(left: 25),
          child: SizedBox(
            width: 300,
            height: 80,
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(width: 3,)),
              hintText: "Password"
            ),),

          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.only(left: 80),
        //   child: Text(
        //       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
        //       "forgot Passcode?/"),
        // ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: RichText(text:
            const TextSpan(text: "Forgot Passcode?/",style: TextStyle(color: Colors.grey),

            children: <TextSpan>[
              TextSpan(text: " Reset",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
            ]
            ),




            ),
          ),



        Padding(
          padding: const EdgeInsets.only(top: 70,left: 40),
          child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
                fixedSize: const Size(280,45),
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)
    ),
            child: const Text("Login"),),
        ),

          Padding(
            padding: const EdgeInsets.only(left: 150,top: 40),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile(),));
            },
              child:const Text(
                "Skip Now",
                  style: TextStyle(
                      color: Colors.grey,fontWeight: FontWeight.bold)),),
          )


      ],),

    );
  }
}
