import 'package:cuponi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  //TODO: Implement SearchScreenController

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

  final TextEditingController searchController = TextEditingController();

  void gotoFilterPage() {
    Get.toNamed(Routes.FILTERS);
  }

  // void gotoRestaurantDetailsScreen() {
  //   Get.toNamed(Routes.RESTAURANT_DETAILS, arguments: ["add"]);
  // }

  void increment() => count.value++;
}
