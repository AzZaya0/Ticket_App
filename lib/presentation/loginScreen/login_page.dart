import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ticket_now/widgets/custom_button.dart';
import 'package:ticket_now/widgets/custom_text.dart';
import 'package:ticket_now/widgets/custom_textField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: MyTextfield(
                  'Username',
                  false,
                  icon: Icons.person,
                  keyboardType: TextInputType.emailAddress,
                ).marginOnly(bottom: 20.h),
              ),
              Center(
                child: MyTextfield(
                    lasticon: Icons.visibility,
                    'Password',
                    true,
                    icon: Icons.lock,
                    onPressed: () {}),
              ),
              customText('ForgotPassword?'),
              Center(
                child: CustomButton(
                  text: 'Login',
                  onTap: () {},
                  height: 50.h,
                  width: 300.h,
                  
                  top: 50.h,
                ),
              )
            ]).marginOnly(left: 40.w, right: 40.w),
      ),
    );
  }
}
