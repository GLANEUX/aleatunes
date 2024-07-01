import 'package:flutter/material.dart';
import '../home.dart';
import '../artistes/ArtistePage.dart';
import '../articles/articles_page.dart';
import '../about.dart';
import '../../app_styles.dart';

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
    const ArtistePage(),
     ArticlesPage(),
    const AboutPage(),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppStyles.secondaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppStyles.primaryColor,
        unselectedItemColor: const Color.fromARGB(255, 162, 110, 254),
        iconSize: 35,
        currentIndex: _currentScreen,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.queue_music), label: 'Artiste'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Articles'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'A propos'),
      
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