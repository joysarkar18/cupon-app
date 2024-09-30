import 'package:get/get.dart';

import '../controllers/featured_offers_controller.dart';

class FeaturedOffersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeaturedOffersController>(
      () => FeaturedOffersController(),
    );
  }
}
