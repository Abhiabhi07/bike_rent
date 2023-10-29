import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RichText(
          text: TextSpan(
              text: '$title ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
              children: [
            TextSpan(
                text: subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ))
          ])),
    );
  }
}
