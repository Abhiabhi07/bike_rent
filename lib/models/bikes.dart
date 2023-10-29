import 'package:assignment_bike_rent/models/bike.dart';

import 'recent_bike.dart';

class Bikes {
  List<Bike> popularBikes = [
    Bike(
        coverImgUrl: 'assets/images/re.png',
        category: 'Cruiser',
        displacement: 350,
        maxSpeed: 120,
        imgUrl: 'assets/images/re.png',
        title: 'Meteor',
        comp: 'Royal Enfield',
        price: 699),
    Bike(
        coverImgUrl: 'assets/images/sb.jpeg',
        category: 'Cruiser',
        displacement: 1133,
        maxSpeed: 124,
        imgUrl: 'assets/images/scout-bobber.webp',
        title: 'Scout Bobber',
        comp: 'Indian',
        price: 1499),
    Bike(
        coverImgUrl: 'assets/images/th.webp',
        category: 'Cruiser',
        displacement: 1080,
        maxSpeed: 128,
        imgUrl: 'assets/images/th.webp',
        title: 'Rebel 1100',
        comp: 'Honda',
        price: 1199)
  ];

  List<Item> recentBikes = [
    Item(
      title: 'Hayabusa',
      imgUrl: 'assets/images/haya.jpg',
      price: 2000,
    ),
    Item(
      title: 'Classic 350',
      imgUrl: 'assets/images/classic.jpeg',
      price: 1500,
    ),
    Item(
      title: 'NINJA ZX-10R',
      imgUrl:
          'assets/images/ninja.png',
      price: 2000,
    ),
  ];

  List<Item> addItems = [
    Item(
      title: 'Riding Jacket',
      imgUrl: 'assets/images/jacket.jpg',
      price: 800,
    ),
    Item(
      title: 'Riding Gloves',
      imgUrl: 'assets/images/gloves.jpeg',
      price: 800,
    ),
    Item(
      title: 'Helmet',
      imgUrl: 'assets/images/helmet.jpeg',
      price: 800,
    ),
    Item(
      title: 'Riding Boots',
      imgUrl: 'assets/images/boots.jpeg',
      price: 800,
    )
  ];
}
