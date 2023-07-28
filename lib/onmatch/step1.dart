import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class Step1 extends StatefulWidget {
  final void Function()? onTab;

  const Step1({Key? key, this.onTab}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text("What is your name?",
                  style: TextStyle(
                      color: Color(0xFF003C30), fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                "First Name*",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(blurRadius: 1.0, color: Colors.black12)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "John",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text("Last Name*",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(blurRadius: 1.0, color: Colors.black12)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  isDense: false,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: "Doe",
                  hintStyle: TextStyle(fontSize: 10)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DottedBorder(
            dashPattern: [7],
            radius: const Radius.circular(45),
            color: const Color(0xFF003C30),
            child: Container(
              height: 110,
              width: 200,
              decoration: const BoxDecoration(
                  color: Color(0xFFD9EEE5),
                  image: DecorationImage(
                      image: AssetImage("assets/images/a.png"), scale: 4)),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: widget.onTab,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(40),
                    backgroundColor: const Color(0xFF003C30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                      style: TextStyle(color: Color(0xFFF1FA3F)), "Contiune")),
              const SizedBox(
                width: 10,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
