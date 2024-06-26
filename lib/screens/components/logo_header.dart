import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Image.asset(
            'assets/aleatunes.png',
            width: 100,
          ),
          const SizedBox(width: 20), 
          const Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, 
              children: [
                Text(
                  'ALEATUNES',
                        style: TextStyle(fontSize: 30),
                  softWrap: true,
                ),
                Text(
                  'Laissez-vous surprendre par la musique !',
                        style: TextStyle(fontSize: 15),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
