import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/128/3177/3177440.png'),
            ),
            title: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 12,
                color: Colors.teal,
              ),
            ),
            subtitle: Text(
              'Abhi Tiwari',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(14.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20.0)),
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 30,
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  'Search Bike',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
