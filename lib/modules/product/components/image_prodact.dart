import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';

class image_prodect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: colorpreblue,
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        // enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.6,
        enlargeCenterPage: true,
        height: 150.h,
        reverse: false,
        aspectRatio: 6.0,
      ),
    );
  }
}
