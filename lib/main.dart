import 'package:flutter/material.dart';
import 'screens/components/bottom_navigation_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 

      theme: ThemeData(
        primaryColor: const Color(0xFFD4CAF0),
        fontFamily: 'Rubik',
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        brightness: Brightness.light,

        // textTheme: const TextTheme(
        //   displayLarge: TextStyle( color: Colors.black, fontFamily: 'Montserrat', fontSize: 18, fontWeight: FontWeight.bold),
        //   displayMedium: TextStyle(color: Colors.black),
        //   displaySmall: TextStyle(color: Colors.black),
        //   headlineLarge: TextStyle(color: Colors.black),
        //   headlineMedium: TextStyle(color: Colors.black),
        //   headlineSmall: TextStyle(color: Colors.black),
        //   titleLarge: TextStyle(color: Colors.black),
        //   titleMedium: TextStyle(color: Colors.black),
        //   titleSmall: TextStyle(color: Colors.black),
        //   bodyLarge: TextStyle(color: Colors.black),
        //   bodyMedium: TextStyle(color: Colors.black),
        //   bodySmall: TextStyle(color: Colors.black),
        //   labelLarge: TextStyle(color: Colors.black),
        //   labelMedium: TextStyle(color: Colors.black),
        //   labelSmall: TextStyle(color: Colors.black),
        // ),
        

        // colorScheme: const ColorScheme(
        //   brightness: Brightness.light, 
        //   primary: Color(0xFFD4CAF0), onPrimary: Color(0xFFD4CAF0), 
        //   secondary: Color(0xFFD4CAF0), onSecondary: Color(0xFFD4CAF0), 
        //   error: Color(0xFFD4CAF0), onError: Color(0xFFD4CAF0), 
        //   background: Color(0xFFD4CAF0), onBackground: Color(0xFFD4CAF0), 
        //   surface: Color(0xFFD4CAF0), onSurface: Color(0xFFD4CAF0)
        // )
    

      ),


      home: const Scaffold(
        body: Center(
          child: DeviceScreen(),
          ),
      ),
    );
  }
}
