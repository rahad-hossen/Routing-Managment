import 'package:flutter/material.dart';
import 'package:routing_mangment/Home/HomeScreen.dart';
import 'package:routing_mangment/Profile/ProfileScreen.dart';
import 'package:routing_mangment/Settings/SettingsScreen.dart';
import 'package:routing_mangment/Utils/Routing%20helper.dart';

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

      routes: Routing_helper.myRouing(),
      onGenerateRoute: (settings){
        return Routing_helper.MyGenaretedRoute(settings);
      },

    );
  }
}




