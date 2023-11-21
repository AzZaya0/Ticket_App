// main.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ticket_now/bloc/screen_size_bloc.dart';
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

    return BlocProvider(
      create: (context) => ScreenSizeBloc(),
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize:
            Size(controller.screenWidth.value, controller.screenHeight.value),
        builder: (_, child) {
          return GetMaterialApp(
            key: const Key('myApp'),
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
            ),
            debugShowCheckedModeBanner: false,
            home: const LoginPage(),
          );
        },
      ),
    );
  }
}
