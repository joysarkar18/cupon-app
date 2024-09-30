import 'package:get/get.dart';

import '../controllers/deals_near_you_controller.dart';

class DealsNearYouBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DealsNearYouController>(
      () => DealsNearYouController(),
    );
  }
}
