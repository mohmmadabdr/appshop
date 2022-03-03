import 'package:appshop/modules/home/components/prodect_botton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class gru_car_prod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => List_Prudect(),
          itemCount: 6,
          separatorBuilder: (context, index) => SizedBox(
                height: 0.5.h,
              )),
    );
  }
}

class gru_car_prod_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => List_Prudect(),
          itemCount: 1,
          separatorBuilder: (context, index) => SizedBox(
                height: 0.5.h,
              )),
    );
  }
}
