import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white,
            shadowColor: Colors.black,
            
            
            

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/link.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(style: TextStyle(fontSize: 16),"Create call link"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,bottom: 20),
                  child: Text(style: TextStyle(color: Colors.grey),"share a link your Tesseract call"),
                ),
                
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(style: TextStyle(color: Colors.grey),"Recent"),
              ),
              
             
            ],
          )
        ],
      ),
    );
  }
}

