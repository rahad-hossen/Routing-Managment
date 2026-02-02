import 'package:flutter/material.dart';
import 'package:routing_mangment/Home/HomeScreen.dart';
import 'package:routing_mangment/Profile/ProfileScreen.dart';
import 'package:routing_mangment/Settings/SettingsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routing Management',

      routes: {
        '/' : (_) => Homescreen(),
        // '/profile' : (_) => Profilescreen(),
        '/settings' : (_) => Settingsscreen()
      },
      onGenerateRoute: (settings){
        switch (settings.name){
          case '/profile' : {
            String name_ = settings.arguments as String;
            return MaterialPageRoute(builder: (context) => ProfileScreen(name: name_));
          }
        }
      },

    );
  }
}




