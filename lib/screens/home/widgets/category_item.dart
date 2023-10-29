import 'package:assignment_bike_rent/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({
    super.key,
  });

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  Categories categories = Categories();
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListView.builder(
          itemCount: categories.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            final category = categories.categories[index];
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                width: 100,
                margin: const EdgeInsets.all(3.0),
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 5.0),
                decoration: BoxDecoration(
                    color: selectedIndex == index ? Colors.black : null,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.teal, width: 1.5)),
                child: Text(
                  category.categoryTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: selectedIndex == index ? Colors.white : null,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
