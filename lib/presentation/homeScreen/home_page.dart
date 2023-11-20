// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ticket_now/presentation/homeScreen/custom_slider.dart';
import 'package:ticket_now/presentation/homeScreen/event_tiles.dart';
import 'package:ticket_now/widgets/custom_text.dart';
import 'package:ticket_now/presentation/homeScreen/filter_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Jaadu',
                        style: TextStyle(
                          color: Color(0xff2e0505),
                          fontSize: 18.sp,
                        ),
                      ),
                      Text(
                        'Discover Amazing Events',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 16.0),
                    height: 54.h,
                    width: 54.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                  ),
                ],
              ).marginSymmetric(horizontal: 16.w, vertical: 10.h),
              Container(
                height: 50.h,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 3.r,
                          blurRadius: 8.r)
                    ],
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white),
                width: 350.w,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.menu)),
                ),
              ).marginSymmetric(horizontal: 20.w, vertical: 15.h),
              customText('Featured Events',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff4E4E4E))
                  .marginSymmetric(horizontal: 20.w),
              EventSlider(),
              customText('Explore Events',
                      fontSize: 20.sp, fontWeight: FontWeight.w700)
                  .marginOnly(
                left: 20.w,
              ),
              FilterTab(),
              EventTile(),
            ],
          ).marginOnly(top: 10.h),
        ),
      ),
    );
  }
}
