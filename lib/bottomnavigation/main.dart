import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bottom navigationbar ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<BottomNavigation> {
  int _selectedindex = 3;
  void _navigationBottomBar (int index){
    setState(() {
      _selectedindex = index;
    });
  }
  final List<Widget> _page = [

    Center(
        child: Text("Home")),

    Center(
        child: Text("Search")),

    Center(
        child: Text("Message")),

    Center(
        child: Text("setting")),

    Center(
        child: Text("Profile")),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _page[_selectedindex],


     bottomNavigationBar: BottomNavigationBar(
       currentIndex: _selectedindex,
         type: BottomNavigationBarType.fixed,
         onTap: _navigationBottomBar,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),
           label: "Home",
           ),
           BottomNavigationBarItem(icon: Icon(Icons.search_rounded),
             label: "search",
           ),
           BottomNavigationBarItem(icon: Icon(Icons.chat),
             label: "message",
           ),
           BottomNavigationBarItem(icon: Icon(Icons.settings),
             label: "setting",
           ),
           BottomNavigationBarItem(icon: Icon(Icons.person),
             label: "user",
           ),
         ]),


    );
  }
}
