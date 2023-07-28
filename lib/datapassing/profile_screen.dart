import 'package:flutter/material.dart';

import 'main.dart';


class Screen extends StatelessWidget {

  var newController  ;
  Screen(this.newController);




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("helo,$newController"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Datapassing(),));
            }, child: Text("back"))
          ],
        ),
      ),
    );
  }
}


