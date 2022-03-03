import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';

class botton_porfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                radius: 40.r,
                backgroundColor: colorpreblue,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    "mohmlmsdlfsdmf",
                    style: TextStyle(color: colorpreblue, fontSize: 18.sp),
                  ),
                ),
                Text(
                  "+96279781153",
                  style: TextStyle(color: Colors.grey[400], fontSize: 14.sp),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.navigate_next,
                  color: colorpreblue,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
