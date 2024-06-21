import 'package:flutter/material.dart';
import 'home.dart';


class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;

  final List<Widget> _screenList = [
    const MainPage(),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _currentScreen != 0
      //     ? AppBar(
      //       backgroundColor: const Color.fromARGB(129, 103, 196, 215),
      //         title: Text(_screenLabels[_currentScreen]),
      //       )
      //     : null,
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 16, 31, 34),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 103, 196, 215),
        unselectedItemColor: const Color.fromARGB(129, 103, 196, 215),
        iconSize: 35,
        currentIndex: _currentScreen,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }



  void _onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

}