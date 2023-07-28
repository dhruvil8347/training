import 'package:flutter/material.dart';
import 'package:trining/tabbarscreen/status.dart';

import 'call.dart';
import 'chat.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "tabbar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),

      home: const Tabbar(),
    );


  }
}

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar>

with SingleTickerProviderStateMixin{

  late final _tabController = TabController(length: 4, vsync: this );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Tessrect"),


        actions: [


          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt),),
          IconButton(onPressed: (){}, icon: Icon(Icons.search),),
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(
                child: Row( children: [
                  TextButton(onPressed: (){},
                      child: Text(style: TextStyle(color: Colors.black),"Advertise"))
                ],)),
            PopupMenuItem(child: Row(children: [
              TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Business tools"))
            ],)),
            PopupMenuItem(child: Row(children: [
              TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"New group"))
            ],)),
            PopupMenuItem(child: Row(children: [
              TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"New broadcast"))
            ],)),
            PopupMenuItem(child: Row(children: [
              TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Lebal"))
            ],)),
            PopupMenuItem(child: Row(children: [
              TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Linked devices"))
            ],)),
            PopupMenuItem(child: Row(children: [
              TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Starred messages"))
            ],)),
            PopupMenuItem(child: Row(children: [
              TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Settings"))
            ],)),

          ],)

        ],
        bottom: TabBar(
            controller: _tabController,
            tabs: [
              IconButton(onPressed: (){}, icon: Icon(Icons.store)),
              Text(style: TextStyle(color: Colors.white),"Chat"),
              Text(style: TextStyle(color: Colors.white),"Status"),
              Text(style: TextStyle(color: Colors.white),"Call"),
        ]),
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),

          Chat(),
          Status(),
          Call(),


        ],
      ),
      drawer: Drawer(

        child:  ListView(children: [
           DrawerHeader(decoration:BoxDecoration(
             image: DecorationImage(image: AssetImage("assets/images/hacker1.jpg"),
             fit: BoxFit.cover,
             ),
             
           ),child: Column(mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,

             children: [
             Image.asset(
                 height: 70,
                 width: 70,
                 "assets/images/Hicon.png"),
               Text(style: TextStyle(color: Colors.white),"Tesseract"),
               Text(style: TextStyle(color: Colors.white),"tesseract@gmail.com",),


           ],)),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"File")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Upload/Download")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Starred")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Favorite")),
              ),

              new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Plugin")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"Notifition")),
              ),

              new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text(style: TextStyle(color: Colors.black),"About")),
              ),



            ],
          ),



        ],),
      ),

    );
  }
}



