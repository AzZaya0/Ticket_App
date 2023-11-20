import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ticket_now/widgets/custom_textField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MyTextfield(
            'Username',
            false,
            icon: Icons.person,
            keyboardType: TextInputType.emailAddress,
          ).marginOnly(bottom: 20.h),
          MyTextfield(
              lasticon: Icons.visibility,
              'Password',
              true,
              icon: Icons.lock,
              onPressed: () {})
        ]).marginOnly(left: 20.w, right: 20.w),
      ),
    );
  }
}
