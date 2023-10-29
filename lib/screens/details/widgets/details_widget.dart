import 'package:assignment_bike_rent/models/bike.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/subtitle_text.dart';
import 'custom_chip.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.bike});

  final Bike bike;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 22),
                child: RichText(
                    text: TextSpan(
                        text: '${bike.comp}\n',
                        style: GoogleFonts.robotoSlab(
                            color: Colors.black, fontSize: 20),
                        children: [
                      TextSpan(
                          text: bike.title,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20))
                    ])),
              ),
               CustomChip(
                title: 'Category',
                subtitle: bike.category,
              ),
              CustomChip(
                title: 'Displacement',
                subtitle: '${bike.displacement.toString()} cc',
              ),
              CustomChip(
                title: 'Max. Speed',
                subtitle: '${bike.maxSpeed} km/h',
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 260,
                  width: 210,
                  decoration: BoxDecoration(
                      color: Colors.teal[200],
                      borderRadius: BorderRadius.circular(20.0)),
                  // child: Image.network(),
                ),
                Positioned(
                  right: 0.0,
                  child: Image.network(
                    bike.imgUrl,
                    height: 230,
                    width: 230,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Container(
              height: 60,
              width: 220,
              margin: const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      backgroundColor: Colors.black),
                  onPressed: () {},
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Rent',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                      SubtitleText(
                        title: bike.price,
                        color: Colors.white,
                      )
                    ],
                  )),
            )
          ],
        )
      ],
    );
  }
}
