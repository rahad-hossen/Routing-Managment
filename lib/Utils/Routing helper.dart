import 'package:flutter/material.dart';

import '../Home/HomeScreen.dart';
import '../Profile/ProfileScreen.dart';
import '../Settings/SettingsScreen.dart';

class Routing_helper {


  static myRouing(){
    return {
      '/' : (_) => Homescreen(),
      '/settings' : (_) => Settingsscreen()
    };
  }

   static MyGenaretedRoute(RouteSettings settings) {
     switch (settings.name) {
       case '/profile' :
         {
           String name_ = settings.arguments as String;
           return MaterialPageRoute(
               builder: (context) => ProfileScreen(name: name_));
         }
     }
   }
}