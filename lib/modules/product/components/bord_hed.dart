import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';

class Categories_prod extends StatefulWidget {
  @override
  _Categories_prodState createState() => _Categories_prodState();
}

class _Categories_prodState extends State<Categories_prod> {
  List<String> categories = [
    "14-insh",
    "12-insh",
    "dsads",
    "asdasd",
  ];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text("Type  : "),
          ),
          SizedBox(
            height: 30.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategory(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Text(
          categories[index],
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? colorb : colorgrey,
          ),
        ),
      ),
    );
  }
}

// GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Stack(
//             alignment: AlignmentDirectional.center,
//             children: [
//               Container(
//                 color: colorpreblue,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20.r),
//                   color: colorpreblue,
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       right: 50, left: 50, top: 5, bottom: 5),
//                   child: Text(
//                     categories[index],
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: selectedIndex == index ? colorw : colorb,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 5 / 4), //top padding 5
//             height: 6,
//             width: 6,
//             decoration: BoxDecoration(
//                 color:
//                     selectedIndex == index ? Colors.black : Colors.transparent,
//                 borderRadius: BorderRadius.circular(50)),
//           )
//         ],
//       ),
//     );