import 'package:appshop/modules/product/components/floating_actionbutton.dart';
import 'package:appshop/shared/Widget/components/botton.dart';
import 'package:appshop/shared/Widget/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'components/bord_hed.dart';
import 'components/down_prodect.dart';
import 'components/image_prodact.dart';

class product_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floating_ActionButton(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 15,
                ),
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                        color: colorpreblue,
                      ),
                    ),
                    Text(
                      "Name Product",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: colorpreblue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: image_prodect(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 10, right: 15, left: 15),
                child: down_prodect(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 15, left: 15),
                child: Container(
                  height: 2,
                  width: double.infinity,
                  color: colorgrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                child: Text("Choose your new Name Produrt "),
              ),
              Container(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Categories_prod(),
                    itemCount: 3,
                    separatorBuilder: (context, index) => SizedBox(
                          height: 0.5.h,
                        )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Text("Description"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                    color: colorgrey,
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
