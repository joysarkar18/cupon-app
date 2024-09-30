import 'package:get/get.dart';

import '../controllers/rating_and_review_controller.dart';

class RatingAndReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RatingAndReviewController>(
      () => RatingAndReviewController(),
    );
  }
}
