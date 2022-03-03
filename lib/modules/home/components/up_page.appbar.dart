import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';

class App_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // is image  is acc add
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: CircleAvatar(
            radius: 18.r,
            backgroundColor: colorpreblue,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Evening",
                style: TextStyle(
                  color: colorgrey,
                ),
              ),
              Text("lastname"),
            ],
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: const ImageIcon(
            AssetImage("assets/images/menu_icon.png"),
          ),
        )
      ],
    );
  }
}
