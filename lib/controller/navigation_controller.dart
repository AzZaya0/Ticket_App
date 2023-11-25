import 'package:get/get.dart';
import 'package:ticket_now/presentation/cartScreen/cart_page.dart';
import 'package:ticket_now/presentation/profileScren/profile_page.dart';

import '../presentation/homeScreen/home_page.dart';

class BottomNavBarController extends GetxController {
  RxInt index = 0.obs;
  var pages = [HomePage(), CartPage(), ProfilePage()];
}
