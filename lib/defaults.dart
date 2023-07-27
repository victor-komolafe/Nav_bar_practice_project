import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectone/my_flutter_app_icons.dart';

class Defaults {
  static final Color navItemColor = Color.fromRGBO(42, 45, 55, 1.0);
  static final Color navItemSelectedColor = Color.fromRGBO(127, 87, 241, 100);
  static final fontPops = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    fontSize: 16,

    // fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white
  );

  static final navItemTexts = [
    'Dashboard',
    'Products',
    'Clients',
    'Messages',
    'DataBase',
    'Notification',
    'Settings'
  ];

  static final navItemIcons = [
    MyFlutterApp.grid,
    MyFlutterApp.package,
    MyFlutterApp.users,
    MyFlutterApp.message_square,
    MyFlutterApp.database,
    MyFlutterApp.bell,
    MyFlutterApp.settings,

    // Icons.
  ];
}
