import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription? streamSubscription;
  InternetBloc() : super(InternetInitial()) {
    on<InternetGainEvent>((event, emit) {
      emit(InternetAccess());
    });

    on<InternetLossEvent>((event, emit) {
      emit(InternetDown());

      print('no int');
    });

    streamSubscription = _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(InternetGainEvent());
      } else {
        add(InternetLossEvent());
      }
    });

  }
  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
