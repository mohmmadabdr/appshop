import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget botton({
  double? width,
  String? title,
  var colortext,
  var colorbotton,
  required VoidCallback onTap,
}) =>
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50.h,
          width: width,
          decoration: BoxDecoration(
            color: colorbotton,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Center(
            child: Text(
              "${title}",
              style: TextStyle(fontSize: 14.sp, color: colortext),
            ),
          ),
        ),
      ),
    );
Widget botton_Auth({
  Widget? image_1,
  double? width,
  String? title,
  var colortext,
  var colorbotton,
  required VoidCallback onTap,
}) =>
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
            height: 50.h,
            width: width,
            decoration: BoxDecoration(
              color: colorbotton,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: image_1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      "${title}",
                      style: TextStyle(fontSize: 14.sp, color: colortext),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
