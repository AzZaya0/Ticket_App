import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CarouselSliders extends StatelessWidget {
  CarouselSliders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      child: CarouselSlider.builder(
        
          itemCount: 5,
          itemBuilder: (context, itemIndex, pageViewIndex) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              height: 200,
            ).marginOnly(right: 15.w);
          },
          options: CarouselOptions(
            height: 200,
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            pageSnapping: true,
          )),
    );
  }
}
