import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/profile_option.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            StringConstant.profile,
            style: TextStyleUtil.manrope18w600(),
          ),
          leading: const SizedBox(),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16.kw, right: 16.kw, top: 16.kh),
          child: Column(
            children: [
              Container(
                height: 181.kh,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(color: context.borderColor1, blurRadius: 16)
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    2.kheightBox,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(44),
                      child: CommonImageView(
                        height: 88,
                        width: 88,
                        fit: BoxFit.cover,
                        url:
                            "https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL3BsYXlcLzBiN2Y0ZTliLWY1OWMtNDAyNC05ZjA2LWIzZGMxMjg1MGFiNy0xOTIwLTEwODAuanBnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo4Mjh9fX0=",
                      ),
                    ),
                    Text(
                      "Joy Sarkar",
                      style: TextStyleUtil.manrope16w600(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail_outline,
                          color: context.black03,
                          weight: 20,
                        ),
                        5.kwidthBox,
                        Text(
                          "joysarkar8171@gmail.com",
                          style: TextStyleUtil.manrope14w400(
                              color: context.black03),
                        ),
                      ],
                    ),
                    2.kheightBox,
                  ],
                ),
              ),
              20.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.userDetailsIcon,
                onTap: controller.gotoEditProfileScreen,
                text: StringConstant.userDetails,
              ),
              10.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.lock,
                onTap: controller.gotoChangePasswordScreen,
                text: StringConstant.changePassword,
              ),
              10.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.rewardsPoint,
                onTap: controller.gotoRewardsPointScreen,
                text: StringConstant.rewardsPoints,
              ),
              10.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.history,
                onTap: controller.gotoPurchesHistory,
                text: StringConstant.purchaseHistory,
              ),
              10.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.refer,
                onTap: () {},
                text: StringConstant.referAFriend,
              ),
              10.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.help,
                onTap: controller.gotoHelpAndSupportScreen,
                text: StringConstant.helpAndSupport,
              ),
              10.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.termsAndCons,
                onTap: controller.gotoTermsAndConditionScreen,
                text: StringConstant.termsAndConditions,
              ),
              10.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.logOut,
                onTap: controller.showLogoutDialog,
                text: StringConstant.logout,
              ),
              10.kheightBox,
              ProfileOption(
                svgPath: ImageConstant.delete,
                onTap: controller.showDeleteDialog,
                text: StringConstant.deleteAccount,
              ),
              10.kheightBox,
            ],
          ),
        ));
  }
}
