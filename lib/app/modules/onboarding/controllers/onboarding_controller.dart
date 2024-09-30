import 'package:cuponi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/storage.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController

  final PageController pageController = PageController(initialPage: 0);
  final RxInt pageCount = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // Future.delayed(const Duration(milliseconds: 1000), () {
    //   Get.offAllNamed(Get.find<GetStorageService>().isLoggedIn ? Routes.NAV_BAR : Routes.ONBOARDING);
    // });
  }

  void incrementPage() {
    int currentPageIndex = pageController.page?.round() ?? 0;
    int nextPageIndex = currentPageIndex + 1;
    pageCount.value = nextPageIndex;
    if (nextPageIndex < 3) {
      pageController.animateToPage(
        nextPageIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      Get.toNamed(Routes.SIGNUP);
    }
  }

  void changePageCount({required int n}) {
    pageCount.value = n;
  }
}
