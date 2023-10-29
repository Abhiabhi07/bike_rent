import 'package:assignment_bike_rent/models/bike.dart';

import 'package:assignment_bike_rent/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/subtitle_text.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key, required this.bike});

  final Bike bike;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (ctx) => DetailsScreen(
                      bike: bike,
                    )));
      },
      child: Container(
        height: 200,
        width: 140,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          // color: Colors.green,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.teal, width: 1.5),
        ),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(bike.coverImgUrl!),
                      fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(
                        20.0,
                      ),
                      topRight: Radius.circular(20.0))),
            )),
            Container(
              padding: const EdgeInsets.only(bottom: 6),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bike.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    bike.comp,
                    style: const TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                  SubtitleText(title: bike.price)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
