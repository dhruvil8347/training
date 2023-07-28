import 'package:flutter/material.dart';
import 'package:trining/onmatch/pageview.dart';

import 'package:dotted_border/dotted_border.dart';



class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF003C30),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset("assets/images/app_logo.png",scale: 4),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Upload your resume ",
              style: TextStyle(
                  color: Color(0xFF003C30), fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 400,
              width: 330,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(1),
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 6)

                  ],
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    DottedBorder(
                      color: const Color(0xFF003C30),
                      strokeWidth: 2,
                      dashPattern: [7],
                      child: Container(
                        height: 150,
                        width: 320,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5),

                          ),

                          color: Color(0xFFD9EEE5),
                          image: DecorationImage(
                              image: AssetImage("assets/images/i.png"),scale: 5)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13,),

                          "Don’t have resume, don’t worry fill the information below By continuing, you can create a resumer and agree to receiving job opportunities from employers."),


                    ),

                    const SizedBox(
                      height: 20,
                    ),


                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(

                          fixedSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: const Color(0xFF003C30)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Pageview(),));
                      },

                       label: const Text("Create Resume",
                          style: TextStyle(
                              color: Color(0xFFF1FA3F),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                        icon: Image.asset("assets/images/pen.png"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
