// lib/app_styles.dart
import 'package:flutter/material.dart';

class AppStyles {
  // Colors
  static const Color primaryColor = Color.fromRGBO(218, 195, 239, 1);
  static const Color secondaryColor = Colors.deepPurple;

  // Text Styles
  static const TextStyle headline1 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    fontFamily: 'Kanit',
    overflow: TextOverflow.ellipsis,
    
  
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 20,
    fontFamily: 'Kanit',
    overflow: TextOverflow.ellipsis,
  );


  static const TextStyle largetitle = TextStyle(
    fontSize: 30,
    fontFamily: 'LuckiestGuy',
    overflow: TextOverflow.ellipsis,
    letterSpacing: 5
  );

static final ButtonStyle elevatedButtonTheme = ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
  static const TextStyle buttontext = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: 'Kanit',
  );




  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
    fontFamily: 'Hind',
  );

  // AppBar Theme
  static const AppBarTheme appBarTheme = AppBarTheme(
    color: primaryColor,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Kanit',
    ),
  );




  // Icon Theme
  static const IconThemeData iconTheme = IconThemeData(
    color: primaryColor,
    size: 24,
  );

}
