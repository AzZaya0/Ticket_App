import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ticket_now/widgets/custom_text.dart';

class EventTile extends StatelessWidget {
  const EventTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          //  physics: NeverScrollableScrollPhysics(),
          itemBuilder: (cxt, index) {
            return Padding(
              padding: EdgeInsets.only(right: 15.0.w, left: 15.0.w),
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://i.pinimg.com/564x/d5/1a/cf/d51acfebb3488076b0ff54e2f5b1890d.jpg',
                      height: 110.h,
                      width: 90.w,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 250.w,
                          child: customText(
                              'Code Fest 2022 is happening soon, How to participate?',
                              fontSize: 15.sp),
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_month),
                            customText('14 April 2022')
                          ],
                        ).marginOnly(bottom: 3.h, top: 6.h),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            customText('Biratnagar'),
                            Icon(
                              Icons.circle,
                              size: 10,
                            ).marginOnly(left: 20.w, right: 10.w),
                            Icon(Icons.wallet),
                            customText('Rs. 200').marginSymmetric(
                              horizontal: 10,
                            )
                          ],
                        )
                      ],
                    ).marginOnly(left: 10.w),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
