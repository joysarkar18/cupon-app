import 'package:get/get.dart';

import '../controllers/exclusive_offer_controller.dart';

class ExclusiveOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExclusiveOfferController>(
      () => ExclusiveOfferController(),
    );
  }
}
