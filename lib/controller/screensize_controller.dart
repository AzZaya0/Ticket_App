import 'package:get/get.dart';

class ScreenSizeController extends GetxController {
  RxDouble screenWidth = 10.0.obs;
  RxDouble screenHeight = 10.0.obs;

// ignore: non_constant_identifier_names
  void checkScreen(double Width) {
    print(Width);
    RxDouble width = Width.obs;
    if (width.value <= 600) {
      screenWidth.value = 393;
      screenHeight.value = 857;
    } else if (width.value >= 700) {
      screenHeight.value = 982;
      screenWidth.value = 1512;
    }
  }
}
