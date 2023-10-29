import 'package:assignment_bike_rent/models/category.dart';

class Bike {
  Bike( {this.coverImgUrl,
    required this.category,
    required this.displacement,
    required this.maxSpeed,
    required this.imgUrl,
    required this.title,
    required this.comp,
    required this.price,
    this.status,
  });

  final String imgUrl;
  final String? coverImgUrl;
  final String title;
  final String comp;
  final int price;
  final String? status;
  final String category;
  final int displacement;
  final int maxSpeed;
}


