import 'package:assignment_bike_rent/models/bike.dart';
import 'package:assignment_bike_rent/models/category.dart';

import 'recent_bike.dart';

class Bikes {
  List<Bike> popularBikes = [
    Bike(
        coverImgUrl:
            'https://bandidospitstop.com/cdn/shop/products/meteorsaddlestay4_8280bee4-3f7d-402e-9ccb-ddf1dd5126ae.jpg?v=1665207555&width=1214',
        category: 'Cruiser',
        displacement: 350,
        maxSpeed: 120,
        imgUrl:
            'https://royalenfield.com.au/wp-content/uploads/2021/06/Meteor-Fireball-Hero-720x657.png',
        title: 'Meteor',
        comp: 'Royal Enfield',
        price: 699),
    Bike(
        coverImgUrl:
            'https://www.indianmotorcycle.in/fileadmin/templates/model_23/nav-menu/intl/scout-bobber.jpg',
        category: 'Cruiser',
        displacement: 1133,
        maxSpeed: 124,
        imgUrl:
            'https://cdn1.polaris.com/globalassets/indian/2020/model/vehicle-cards/scout-bobber-thunder-black.png?v=7edbc354&format=webp',
        title: 'Scout Bobber',
        comp: 'Indian',
        price: 1499),
    Bike(
        coverImgUrl:
            'https://ultimatemotorcycling.com/wp-content/uploads/2020/11/2021-Honda-Rebel-1100-First-Look-cruiser-motorcycle-DCT-1.jpg',
        category: 'Cruiser',
        displacement: 1080,
        maxSpeed: 128,
        imgUrl:
            'https://powersports.honda.com/-/media/feature/powersports/dct/model-module/dct-2023-rebel-1100-model.png',
        title: 'Rebel 1100',
        comp: 'Honda',
        price: 1199)
  ];

  List<Item> recentBikes = [
    Item(
      title: 'Hayabusa',
      imgUrl:
          'https://imgd.aeplcdn.com/272x153/bw/models/suzuki-hayabusa-standard20191213151738.jpg?q=80',
      price: 2000,
    ),
    Item(
      title: 'Classic 350',
      imgUrl:
          'https://www.royalenfield.com/content/dam/royal-enfield/india/motorcycles/classic-350/colors/studio-shots/dual-channel/chrome-red/01-chrome-red.png',
      price: 1500,
    ),
    Item(
      title: 'NINJA ZX-10R',
      imgUrl:
          'https://kawasaki-india.com/wp-content/uploads/2021/03/Limegreenebony-feature-img.png',
      price: 2000,
    ),
  ];

  List<Item> addItems = [
    Item(
        title: 'Riding Jacket',
        imgUrl:
            'https://cdn1.polaris.com/globalassets/pga/indian/shop/apparel/mens/2861402.jpg?v=a1444f36&format=webp&height=300',
        price: 800,
    ),
    Item(
      title: 'Riding Gloves',
      imgUrl:
      'https://www.harley-davidson.com/content/dam/h-d/images/product-images/merchandise/2023/97173-23vm/97173-23VM_F.jpg?impolicy=myresize&rw=480',
      price: 800,
    ),
    Item(
      title: 'Helmet',
      imgUrl:
      'https://www.harley-davidson.com/content/dam/h-d/images/product-images/merchandise/2023/97176-23vx/97176-23VX_B.jpg?impolicy=myresize&rw=480',
      price: 800,
    ),
    Item(
      title: 'Riding Boots',
      imgUrl:
      'https://store.royalenfield.com/media/catalog/product/e/3/e39brown_2re.jpg?width=275&height=275&canvas=275,275&quality=80&bg-color=255,255,255',
      price: 800,
    )

  ];
}
