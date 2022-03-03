import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';

class down_prodect extends StatelessWidget {
  const down_prodect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "name product",
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
            Spacer(),
            Text(
              "\$ 1000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: colorpreblue,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            "by name ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
              color: colorgrey,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "4.0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                  color: colorb,
                ),
              ),
            ),
            Spacer(),
            IconButton(
              padding: EdgeInsets.all(0),
              color: Color.fromARGB(255, 207, 176, 0),
              onPressed: () {},
              icon: Icon(Icons.star_border_outlined),
            ),
          ],
        ),
      ],
    );
  }
}
