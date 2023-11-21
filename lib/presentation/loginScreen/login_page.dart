import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ticket_now/controller/screensize_controller.dart';
import 'package:ticket_now/widgets/custom_button.dart';
import 'package:ticket_now/widgets/custom_text.dart';
import 'package:ticket_now/widgets/custom_textField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenSizeController controller = Get.put(ScreenSizeController());

    return SafeArea(
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              

              Obx(() => Text(controller.screenWidth.value.toString())),
              Center(
                child: MyTextField(
                  name: 'Username',
                  obscureText: false,
                  icon: Icons.person,
                  keyboardType: TextInputType.emailAddress,
                ).marginOnly(bottom: 20.h),
              ),
              Center(
                child: MyTextField(
                    lastIcon: Icons.visibility,
                    name: 'Password',
                    obscureText: true,
                    icon: Icons.lock,
                    onPressed: () {}),
              ),
              CustomText(text: 'ForgotPassword?'),
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
