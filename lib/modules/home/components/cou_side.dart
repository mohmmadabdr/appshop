import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';

class Cou_Slide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 5),
      child: CarouselSlider(
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: colorpreblue,
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          autoPlayAnimationDuration: Duration(seconds: 3),
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          viewportFraction: 0.8,
          enlargeCenterPage: true,
          height: 120.h,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
      ),
    );
  }
}
