import 'package:flutter/material.dart';

class DateTile extends StatelessWidget {
  const DateTile({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 80,
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: ListTile(
        leading: const SizedBox(
          width: 20,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(title, style: const TextStyle(
              fontSize: 18,
              color: Colors.teal,
            fontWeight: FontWeight.w500
          )),
        ),
        subtitle: Text(subtitle, style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500
        ), ),
        trailing: Image.network('https://cdn-icons-png.flaticon.com/128/10156/10156100.png', fit: BoxFit.contain,height: 40,),
      ),
    );
  }
}
