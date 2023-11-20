import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestAppBar extends StatelessWidget {
  const TestAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Set elevation to 0 for a flat design
        title: Column(
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
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            height: 54.h,
            width: 54.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(14.r),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // Your body content goes here
        ),
      ),
    );
  }
}
