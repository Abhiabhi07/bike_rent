import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            style: GoogleFonts.risque(
                fontWeight: FontWeight.w500,
                color: color ?? Colors.black,
                fontSize: 16),
            children:  [
              TextSpan(
                  text: 'per day',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                  ))
            ]));
  }
}
