import 'package:flutter/material.dart';


class SubtitleText extends StatelessWidget {
  const   SubtitleText({super.key, required this.title, this.color,
  });
  final int title;
  final Color? color;


  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: '$title/',
            style: TextStyle(
              fontFamily: 'Risque',
                fontWeight: FontWeight.w500,
                color: color ?? Colors.black,
                fontSize: 16),
            children:  [
              TextSpan(
                  text: 'per day',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                  ))
            ]));
  }
}
