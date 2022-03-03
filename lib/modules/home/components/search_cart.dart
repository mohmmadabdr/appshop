import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';

class Search_Cart extends StatelessWidget {
  const Search_Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            width: 285.w,
            height: 50.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: colorgrey),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: new TextFormField(
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: colorw,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 17,
                  ),
                ),
                autocorrect: false,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: colorgrey),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Color.fromARGB(255, 207, 176, 0),
            ),
          ),
        ],
      ),
    );
  }
}
