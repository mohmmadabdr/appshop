import 'package:appshop/modules/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../models/ListDrawer_model/ListDrawer.dart';
import '../../../shared/Widget/constants.dart';
import '../../GetStart/GetStart_Screen.dart';

class Menu_Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.grey[300],
              statusBarIconBrightness: Brightness.dark,
            ),
            backgroundColor: Colors.grey[300]),
      ),
      backgroundColor: colorgrey,
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35.r,
                    backgroundColor: colorpreblue,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Name User",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: colorpreblue,
                  size: 25,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: colorpreblue,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {
                  Get.to(Home_Screen());
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    bulidItemDrawer(context, menu[index]),
                itemCount: menu.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Version : 1.0',
                    style: TextStyle(color: colorb, fontSize: 14.sp),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(color: colorb, fontSize: 14.sp),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.logout,
                          color: colorb,
                          size: 25,
                        ),
                        onPressed: () {
                          Controller.siginup(GetStart_Screen());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget bulidItemDrawer(BuildContext context, MenuItem item) {
  return Column(
    children: [
      ListTile(
        leading: Icon(
          item.icon,
          color: colorb,
          size: 25,
        ),
        title: Text(
          "${item.title}",
          style: TextStyle(color: colorb, fontSize: 14.sp),
        ),
        onTap: () {
          Get.to(item.ontap);
        },
      ),
    ],
  );
}
