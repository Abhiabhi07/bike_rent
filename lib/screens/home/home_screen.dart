// ignore_for_file: prefer_const_constructors

import 'package:assignment_bike_rent/models/category.dart';
import 'package:assignment_bike_rent/models/recent_bike.dart';
import 'package:assignment_bike_rent/widgets/cutsom_list_tile.dart';
import 'package:assignment_bike_rent/screens/home/widgets/header_widget.dart';
import 'package:assignment_bike_rent/widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../../models/bikes.dart';
import '../../widgets/subtitle_text.dart';
import 'widgets/category_item.dart';
import 'widgets/popular_item.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
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
              HeaderWidget(),
              CategoryItems(),
              SizedBox(height: 15.0),
              TitleText(title: 'Popular', subtitle: 'items'),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: bikes.popularBikes.length,
                    itemBuilder: (ctx, i) {
                      return PopularItem(bike: bikes.popularBikes[i],);
                    }),
              ),
              SizedBox(height: 15.0),
              TitleText(title: 'Recently', subtitle: 'viewed'),
               ListView.builder(
                 controller: scrollController,
                 shrinkWrap: true,
                 itemCount:  bikes.recentBikes.length,
                   itemBuilder: (ctx, index){
                 return CustomListTile(
                   imgUrl:
                   bikes.recentBikes[index].imgUrl,
                   title: bikes.recentBikes[index].title,
                   subtitle: bikes.recentBikes[index].price,
                   trailingText: 'Available', oddTitle: 'Booked', index: index,
                 );
               })
            ],
          ),
        ),
      ),
    );
  }
}
