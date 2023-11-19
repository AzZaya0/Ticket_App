// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_now/presentation/homeScreen/home_page.dart';
import 'package:ticket_now/widgets/tesrAoo.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(393, 852),
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(
              scaffoldBackgroundColor: Color(0xfff4f5f9),
              appBarTheme: AppBarTheme(backgroundColor: Color(0xfff4f5f9))),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
