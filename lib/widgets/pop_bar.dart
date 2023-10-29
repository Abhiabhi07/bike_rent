import 'package:flutter/material.dart';

class PopBar extends StatelessWidget {
  const PopBar({super.key, required this.title, this.onTap});

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 30,
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black38,
                    Colors.white10,
                  ],
                ),
              ),
              child: const Icon(
                Icons.arrow_back_rounded,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              height: 60,
              margin: const EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                  //  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(width: 1, color: Colors.teal)),
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
