import 'package:get/get.dart';

import '../controllers/set_preference_controller.dart';

class SetPreferenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetPreferenceController>(
      () => SetPreferenceController(),
    );
  }
}
