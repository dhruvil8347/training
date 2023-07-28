import 'package:flutter/material.dart';

import 'main.dart';

class Other extends StatefulWidget {
  final String name;
  final email ;
  final password ;

  const Other({
    Key? key,
    required this.name, required this.email, required this.password,
  }) : super(key: key);



  @override
  State<Other> createState() => _OtherState();
}

class _OtherState extends State<Other> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("user name is ${widget.name}",
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text("Email is ${widget.email}", style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text("Password is ${widget.password}",
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiScreen(),
                      ));
                },
                child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
