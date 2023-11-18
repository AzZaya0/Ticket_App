import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventSlider extends StatelessWidget {
  const EventSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: double.infinity,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 200.h,
              width: 300.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.r),
                  color: Colors.grey),
            ).marginOnly(left: 15.w);
          }),
    ).marginSymmetric(vertical: 20.h);
  }
}
