import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'screen_size_event.dart';
part 'screen_size_state.dart';

class ScreenSizeBloc extends Bloc<ScreenSizeEvent, ScreenSizeState> {
  ScreenSizeBloc() : super(ScreenSizeInitial()) {
    on<MobileScreenEvent>((event, emit) {
      emit(MobileScreen());
    });

    on<DesktopScreenEvent>((event, emit) {
      emit(DesktopScreen());
    });

    // var ScreenHeight = Get.size.height;
    double ScreenWidth = Get.size.width;
    ScreenWidth.obs;
    print('hahsashaushuasuas');
    if (ScreenWidth >= 450) {
      add(DesktopScreenEvent());

      print('this hehehehehe');
    } else {
      add(MobileScreenEvent());
    }
  }
}
