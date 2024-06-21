import 'package:flutter/material.dart';
import 'screen/bottom_navigation_bar.dart';
import '../app_colors.dart';
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
                primaryColor: AppColors.primaryColor,

        fontFamily: 'Rubik',
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        brightness: Brightness.light,
            textTheme: const TextTheme(
          titleLarge: TextStyle(fontFamily: 'Montserrat', fontSize: 18, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
        ),
      ),


      home: const Scaffold(
        body: Center(
          child: DeviceScreen(),
          ),
      ),
    );
  }
}
