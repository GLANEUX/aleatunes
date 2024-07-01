import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  final String thetitle;

  const TextHeader({
    Key? key,
    required this.thetitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Expanded(
              child: Text(
                thetitle,
                textAlign: TextAlign.center,
                style:   const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Kanit',
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            ),
          ],
        );
  }
}
