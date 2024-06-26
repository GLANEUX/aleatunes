import 'package:flutter/material.dart';
import '../../app_styles.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
 color: AppStyles.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              'assets/aleatunes.png',
              width: 85,
            ),
            const SizedBox(width: 20),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ALEATUNES', style: AppStyles.largetitle),
                  Text(
                    'Laissez-vous surprendre par la musique !',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Kanit',
                    ),
                    softWrap: true,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
