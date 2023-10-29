import 'package:flutter/material.dart';

import 'subtitle_text.dart';

class CustomListTile extends StatelessWidget {
   const CustomListTile(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.subtitle,
      required this.trailingText, required this.oddTitle, this.fontSize, required this.index,
     });

  final String imgUrl;
  final String title;
  final String oddTitle;
  final int subtitle;
  final String trailingText;
  final double? fontSize;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
            child: Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.teal, width: 1.5),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgUrl), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.teal, width: 1.5),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style:  TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fontSize ?? 18),
                      ),
                      SubtitleText(title: subtitle,)
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 73,
                    margin: const EdgeInsets.symmetric(horizontal: 15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: index.isOdd ? Colors.grey : Colors.black,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Text(
                      index.isOdd ? oddTitle : trailingText,
                      style: TextStyle(
                          color: index.isOdd ? Colors.black : Colors.white,
                          fontSize: 14,),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          );

  }
}
