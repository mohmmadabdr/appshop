import 'package:appshop/modules/product/product_screen.dart';
import 'package:appshop/shared/Widget/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class List_Prudect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              children: [
                Text(
                  "Laptop",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14.r,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 5),
            child: Container(
              height: 2.h,
              color: colorgrey,
            ),
          ),
          Container(
            height: 190.h,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => proudect_botton(),
              separatorBuilder: (context, index) => SizedBox(
                width: 10.w,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

Widget proudect_botton() {
  return InkWell(
    onTap: () {
      Get.to(product_screen());
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              height: 100.h,
              width: 140.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: colorpreblue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: CircleAvatar(
                backgroundColor: colorw,
                radius: 10.r,
                child: Icon(
                  Icons.star_border_outlined,
                  color: Color.fromARGB(255, 207, 176, 0),
                  size: 15.r,
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            "name prodect",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          "by Name",
          style: TextStyle(fontSize: 10.sp, color: colorgrey),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            "\$ 1000",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
              color: colorpreblue,
            ),
          ),
        ),
        Container(
          width: 60,
          height: 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: colorpreblue,
          ),
        )
      ],
    ),
  );
}
