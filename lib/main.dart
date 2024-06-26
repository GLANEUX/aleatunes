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
        primaryColor: const Color.fromRGBO(218, 195, 239, 1),
        fontFamily: 'Kanit',
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
       
      ),


      home: const Scaffold(
        body: SafeArea(
          child: Center(
            child: DeviceScreen(),
            ),
        ),
      ),
    );
  }
}
