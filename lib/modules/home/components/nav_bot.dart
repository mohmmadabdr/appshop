import 'package:appshop/shared/Widget/constants.dart';
import 'package:flutter/material.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All Brands",
    "Apple",
    "ASUS",
    "Microsoft",
    "Sony",
    "Dell",
    "HP",
  ];
  // By default our first item will be selected

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Controller.selectedIndex = index;
          print(Controller.selectedIndex);
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Controller.selectedIndex == index
                    ? colorpreblue
                    : colorgrey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5 / 4), //top padding 5
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                  color: Controller.selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(50)),
            )
          ],
        ),
      ),
    );
  }
}
