import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';

class Cou_Slide extends StatelessWidget {
  List<String> image_Side = [
    "assets/images/Deals_1.webp",
    "assets/images/Deals_2.png",
    "assets/images/Deals_3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 5),
      child: CarouselSlider(
        items: [image_Side.length].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Deals_2.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
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
