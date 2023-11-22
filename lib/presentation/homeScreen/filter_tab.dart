// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FilterTab extends StatelessWidget {
  const FilterTab({
    Key? key,
    required this.width,
  }) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: width,
      child: ListView.builder(
          itemCount: 26,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 40.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.r)),
            ).marginOnly(left: 20.w);
          }),
    ).marginOnly(top: 20.h, bottom: 5.h);
  }
}
