import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: 160,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.teal),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.teal, fontSize: 18),
          ),
          Text(
            '$subtitle',
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
