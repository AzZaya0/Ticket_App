import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ticket_now/bloc/internet_bloc.dart';
import 'package:ticket_now/controller/internet_controller.dart';
import 'package:ticket_now/presentation/homeScreen/home_page.dart';
import 'package:ticket_now/presentation/homeScreen/navigation_bar.dart';
import 'package:ticket_now/presentation/loginScreen/login_page.dart';

import 'controller/screensize_controller.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenSizeController controller = Get.put(ScreenSizeController());
    controller.checkScreen(MediaQuery.of(context).size.width);
    final InternetController internetController = Get.put(InternetController());
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize:
            Size(controller.screenWidth.value, controller.screenHeight.value),
        builder: (_, child) {
          return GetMaterialApp(
            key: const Key('myApp'),
            // this is for web
            scrollBehavior: MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
                PointerDeviceKind.stylus,
                PointerDeviceKind.unknown
              },
            ),
            theme: ThemeData(
              scaffoldBackgroundColor: Color(0xfff4f5f9),
            ),
            debugShowCheckedModeBanner: false,
            home: const MyNavigation(),
          );
        },
      ),
    );
  }
}
