import 'package:flutter/material.dart';
import 'package:trining/usercardapi/main.dart';
import 'package:trining/weatherapi/main.dart';
import 'Chucks norries/main.dart';

class AllApicalling extends StatefulWidget {
  const AllApicalling({Key? key}) : super(key: key);

  @override
  State<AllApicalling> createState() => _AllApicallingState();
}

class _AllApicallingState extends State<AllApicalling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 30,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => chuckNorris(),));
          }, child: Text("Chucks Norries Api")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UsercardApi(),));
          }, child: Text("User Details")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Weatherapi(),));
          }, child: Text("weather Api")),

        ]
        ),
      ),
    );
  }
}///fjhjhiejrfi
