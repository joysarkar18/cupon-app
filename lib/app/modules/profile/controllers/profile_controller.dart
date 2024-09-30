import 'package:cuponi/app/components/confirmation_dialog.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  void gotoEditProfileScreen() {
    Get.toNamed(Routes.EDIT_PROFILE);
  }

  void gotoChangePasswordScreen() {
    // Get.toNamed(Routes.CHANGE_PASSWORD_FROM_PROFILE);
    Get.toNamed(Routes.CHANGE_PASSWORD);
  }

  void gotoTermsAndConditionScreen() {
    Get.toNamed(Routes.TERMS_AND_CONDITIONS);
  }

  void gotoHelpAndSupportScreen() {
    Get.toNamed(Routes.HELP_AND_SUPPORT);
  }

  void gotoRewardsPointScreen() {
    Get.toNamed(Routes.REWARD_POINTS);
  }

  void gotoPurchesHistory() {
    Get.toNamed(Routes.PURCHASE_HISTORY);
  }

  void showRateAppBottomSheet() {
    // Get.bottomSheet(const RateAppBottomSheet());
  }

  void logoutUser() {
    // Auth auth = Auth();
    // auth.logOutUser();
  }

  void showLogoutDialog() {
    Get.dialog(ConfrimationDialog(
        title: StringConstant.confirmLogout,
        subTitle: StringConstant.confirmLogoutSub,
        onYesTap: () {
          logoutUser();
          Get.offAllNamed(Routes.LOGIN);
        },
        onNoTap: Get.back));
  }

  void showDeleteDialog() {
    Get.dialog(ConfrimationDialog(
        title: StringConstant.confirmDelete,
        subTitle: StringConstant.confirmDeleteSub,
        onYesTap: () {
          logoutUser();
          Get.offAllNamed(Routes.LOGIN);
        },
        onNoTap: Get.back));
  }
}
