
import 'package:flutter/material.dart';

class Errormessage extends StatelessWidget {
  const Errormessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/aleatunes.png', width: 140,),
            const SizedBox(height: 20),
            const Text('ALEATUNES', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 30),
            const Text('Vous êtes hors ligne'),
      
          ],
        ),
      );
  }
}