class Category {
  final String categoryTitle;

  Category({required this.categoryTitle});
}

class Categories {
  List<Category> categories = [
    Category(categoryTitle: 'Adventure'),
    Category(categoryTitle: 'Cruiser'),
    Category(categoryTitle: 'Sportsbike'),
    Category(categoryTitle: 'Touring'),
    Category(categoryTitle: 'Street'),
  ];
}
