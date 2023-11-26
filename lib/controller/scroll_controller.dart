import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Scroll_Controller extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.offset == 0) {
        ScrollBehavior();
      }
    });
  }

  ScrollController scrollController = ScrollController();
}
