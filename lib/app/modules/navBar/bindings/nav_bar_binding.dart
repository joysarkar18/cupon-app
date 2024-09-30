import 'package:cuponi/app/modules/favorites/controllers/favorites_controller.dart';
import 'package:cuponi/app/modules/myCoupons/controllers/my_coupons_controller.dart';
import 'package:cuponi/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/nav_bar_controller.dart';

class NavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarController>(
      () => NavBarController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<FavoritesController>(
      () => FavoritesController(),
    );
    Get.lazyPut<MyCouponsController>(
      () => MyCouponsController(),
    );
  }
}
