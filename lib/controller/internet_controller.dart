import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:ticket_now/bloc/internet_bloc.dart';

InternetBloc internetBloc = InternetBloc();

class InternetController extends GetxController {
  checkInternet() {
    return BlocListener<InternetBloc, InternetState>(
      listener: (context, state) {
        if (state is InternetDown) {
          const SnackBar(content: Text('hekko'));
        } else {}
        return null;
      },
    );
  }
}
