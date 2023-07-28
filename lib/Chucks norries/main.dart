import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
  demo() {
    print("ghhgh");
  }
}

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

void demo() {
  logger.d('Log message with 2 methods');

  loggerNoStack.i('Info message');

  loggerNoStack.w('Just a warning!');

  logger.e('Error! Something bad happened', 'Test Error');

  loggerNoStack.v({'key': 5, 'value': 'somethin'});

  Logger(printer: SimplePrinter(colors: true)).v('boom');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "fruit",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const chuckNorris(),
    );
  }
}

class chuckNorris  extends StatefulWidget {
  const chuckNorris({Key? key}) : super(key: key);

  @override
  State<chuckNorris> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<chuckNorris> {
  String url = "https://api.chucknorris.io/jokes/random";
  String joke = "";
  String id = "";

  //String icon_url = "https://randomuser.me/api/portraits/women/";

  void fetchFruit() async {
    final response = await http.get(Uri.parse(url));

    Logger().d("res->${response.body.toString()}");
    setState(() {
      joke = jsonDecode(response.body)['value'];
      id = jsonDecode(response.body)['id'];
      //icon_url = jsonDecode(respons.body)['icon_url'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/apichunks.png",scale: 2,),
              SizedBox(height: 15,),

              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.black12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('joke: $joke ,  '),
                ),
              ),
              SizedBox(
                height: 50,
              ),

              //Image.network('$icon_url'),

              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => {fetchFruit()}, child: const Text("call"))
            ],
          ),
        ));
  }
}

class Fruit {

  String value;
  String icon_url;
  double id;

  Fruit({
    this.value = "",
    this.icon_url = "",
    this.id = 0.0,
  });

  factory Fruit.fromJson(Map<String, dynamic> json) {
    return Fruit(
      id: json['id'] ?? "",
      value: json['value'] ?? "",
      icon_url: json['icon_url'] ?? 0.0,

    );
  }

  Map<String, dynamic> toJson() => {
        "value": value,
        "icon_url": icon_url,
        "id": id,
      };
}
