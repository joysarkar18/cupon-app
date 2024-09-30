import 'package:cuponi/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  RxBool isApple = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void tollgeToSignup() {
    Get.offNamed(Routes.SIGNUP);
  }

  void increment() => count.value++;
}
