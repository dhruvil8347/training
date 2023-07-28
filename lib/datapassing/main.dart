import 'package:flutter/material.dart';
import 'package:trining/datapassing/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Data passing",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Datapassing(),
    );
  }
}

class Datapassing extends StatefulWidget {
  const Datapassing({Key? key}) : super(key: key);

  @override
  State<Datapassing> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<Datapassing> {

  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: TextField(
                controller: name,

              ),

            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Screen(name.text.toString()),));

            }, child: Text("next page"))
          ],
        ),
      ),

    );
  }
}
