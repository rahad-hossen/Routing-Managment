
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/profile',arguments: 'Rahad');

            }, child: Text("Visit Profile")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/settings');
            }, child: Text("Settings")),
          ],
        ),
      ),
    );

  }

}