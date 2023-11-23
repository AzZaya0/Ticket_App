import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ticket_now/bloc/internet_bloc.dart';

InternetBloc internetBloc = InternetBloc();

class InternetController extends GetxController {
  void showSnackbar() {
    Get.showSnackbar(GetSnackBar(
      title: 'hello',
    ));
  }
}
