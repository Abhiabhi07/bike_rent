import 'package:assignment_bike_rent/models/bike.dart';
import 'package:assignment_bike_rent/models/bikes.dart';
import 'package:assignment_bike_rent/widgets/cutsom_list_tile.dart';
import 'package:assignment_bike_rent/widgets/pop_bar.dart';
import 'package:assignment_bike_rent/widgets/subtitle_text.dart';
import 'package:assignment_bike_rent/widgets/title_text.dart';
import 'package:flutter/material.dart';

import 'widgets/details_widget.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.bike});

  final Bike bike;
  Bikes bikes = Bikes();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PopBar(
              title: 'Bike Details',
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            DetailsWidget(
              bike: bike,
            ),
            const SizedBox(
              height: 15,
            ),
            const TitleText(title: 'Add', subtitle: 'items'),
            ListView.builder(
                controller: scrollController,
                itemCount: bikes.addItems.length,
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  final itm = bikes.addItems[index];
                  return CustomListTile(
                    imgUrl: itm.imgUrl,
                    title: itm.title,
                    fontSize: 16,
                    subtitle: 800,
                    trailingText: '1',
                    oddTitle: 'Add',
                    index: index,
                  );
                })
          ],
        ),
      )),
    );
  }
}
