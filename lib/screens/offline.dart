import 'package:flutter/material.dart';

class OfflinePage extends StatefulWidget {
  const OfflinePage({super.key});

  @override
  _OfflinePageState createState() => _OfflinePageState();
}

class _OfflinePageState extends State<OfflinePage> {
  Future<void> function() async {
    // Implémentez votre logique ici
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/aleatunes.png', width: 140,),
            const SizedBox(height: 20),
            const Text('ALEATUNES', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 30),
            const Text('Vous êtes hors ligne'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {function;},
              child: const Text('ACTUALISEZ')
            ),
          ],
        ),
      ),
    );
  }
}
