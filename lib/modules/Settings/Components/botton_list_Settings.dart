import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../models/list_Settings/list_Setting_model.dart';
import '../../../shared/Widget/constants.dart';

class list_vew_botton extends StatelessWidget {
  const list_vew_botton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) =>
              des_botton_list(context, menu_Setting[index]),
          itemCount: menu_Setting.length,
          separatorBuilder: (context, index) => SizedBox(
                height: 0.5.h,
              )),
    );
  }

  Widget des_botton_list(BuildContext context, MenuItem_Settings item) =>
      Column(
        children: [
          Container(
            height: 60.h,
            width: double.infinity,
            color: colorw,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: item.ColorBack,
                    child: Icon(
                      item.icon,
                      color: colorw,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${item.title}",
                      style: TextStyle(color: colorpreblue, fontSize: 18.sp),
                    ),
                    Text(
                      "${item.Desc}",
                      style:
                          TextStyle(color: Colors.grey[400], fontSize: 14.sp),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Get.to(item.onTap);
                  },
                  icon: Icon(
                    Icons.navigate_next,
                    size: 20,
                    color: colorpreblue,
                  ),
                )
              ],
            ),
          ),
        ],
      );
}
