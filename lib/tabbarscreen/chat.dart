import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 280,bottom: 40),
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Colors.white,
              child: const Icon(
                  Icons.chat,
                  color: Colors.black,
              ),


            ),
          ),
        ],
      )
    );
  }
}
