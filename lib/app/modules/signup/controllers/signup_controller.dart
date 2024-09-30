import 'package:cuponi/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final count = 0.obs;
  RxBool passwordVisible = false.obs;
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

  void togglePasswordVisible() {
    passwordVisible.value = !passwordVisible.value;
  }

  void toggleToLogin() {
    Get.offNamed(Routes.LOGIN);
  }

  void gotoVerify() {
    Get.toNamed(Routes.VERIFY);
  }

  void increment() => count.value++;
}
