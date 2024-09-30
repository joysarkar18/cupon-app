import 'package:cuponi/app/modules/home/views/location_bottom_sheet.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
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

  void showLocationBottomSheet() {
    Get.bottomSheet(const LocationBottomSheet());
  }

  void increment() => count.value++;
}
