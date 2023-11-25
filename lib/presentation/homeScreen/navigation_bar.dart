// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../controller/navigation_controller.dart';

class MyNavigation extends StatelessWidget {
  const MyNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavBarController controller = Get.put(BottomNavBarController());
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Color.fromARGB(255, 50, 111, 215),
        ),
        child: GNav(
            tabBackgroundColor: Colors.white,
            color: Colors.white,
            onTabChange: (index) {
              controller.index.value = index;
            },
            iconSize: 30,
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 400),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            gap: 10,
            tabActiveBorder: Border.all(width: 1),
            tabs: [
              GButton(
                icon: CupertinoIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: CupertinoIcons.person_crop_circle,
                text: 'Users',
              ),
              GButton(
                icon: CupertinoIcons.book_solid,
                text: 'Todo',
              )
            ]),
      ),
      body: Obx(() => controller.pages[controller.index.value]),
    );
  }
}
