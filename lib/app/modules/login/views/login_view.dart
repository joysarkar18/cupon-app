import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: 800.kh,
        padding: EdgeInsets.symmetric(horizontal: 16.kw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            88.kheightBox,
            Text(
              StringConstant.login,
              style: TextStyleUtil.manrope32w700(),
            ),
            Text(
              StringConstant.enterYourLoginDetails,
              style: TextStyleUtil.manrope16w400(color: context.black03),
            ),
            40.kheightBox,
            Text(
              StringConstant.emailId,
              style: TextStyleUtil.manrope14w500(),
            ),
            6.kheightBox,
            Container(
              height: 53.kh,
              width: 100.w,
              decoration: BoxDecoration(
                  color: context.loginSignupTextfieldColor,
                  borderRadius: BorderRadius.circular(8.0.kw),
                  border: Border.all(color: context.black07)),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Padding(
                padding: EdgeInsets.only(bottom: 4.kh),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (val) {
                          // if (val.isEmpty) {
                          //   controller.isLoginEnabled.value = false;
                          // } else if (val.isNotEmpty) {
                          //   controller.isLoginEnabled.value = true;
                          // }
                        },
                        // controller: controller.emailController,
                        decoration: InputDecoration(
                          hintText: StringConstant.enterEmailId,
                          hintStyle: TextStyleUtil.manrope14w400(
                              color: context.black04),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            20.kheightBox,
            Text(
              StringConstant.password,
              style: TextStyleUtil.manrope14w500(),
            ),
            6.kheightBox,
            Container(
              height: 53.kh,
              width: 100.w,
              decoration: BoxDecoration(
                  color: context.loginSignupTextfieldColor,
                  borderRadius: BorderRadius.circular(8.0.kw),
                  border: Border.all(color: context.black07)),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Padding(
                padding: EdgeInsets.only(bottom: 4.kh),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (val) {
                          // if (val.isEmpty) {
                          //   controller.isLoginEnabled.value = false;
                          // } else if (val.isNotEmpty) {
                          //   controller.isLoginEnabled.value = true;
                          // }
                        },
                        // controller: controller.passwordController,
                        // obscureText: controller.passwordVisible.value,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                // controller.togglePasswordVisibility();
                              },
                              icon: Icon(
                                Icons.remove_red_eye_rounded,
                                size: 18.kw,
                              )),
                          hintText: StringConstant.enterPassword,
                          hintStyle: TextStyleUtil.manrope14w400(
                              color: context.black04),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      StringConstant.forgotPassword,
                      style: TextStyleUtil.manrope14w400(
                        color: context.black03,
                      ),
                    )),
              ],
            ),
            20.kheightBox,
            CustomYellowElevatedButton(
                buttonText: StringConstant.login,
                height: 56.kh,
                width: 100.w,
                textStyle: TextStyleUtil.manrope16w500(color: context.black03),
                onPressed: () {}),
            20.kheightBox,
            Row(
              children: [
                Expanded(
                    child: Divider(
                  color: context.black07,
                  thickness: 1.5,
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    StringConstant.orsignupWith,
                    style: TextStyleUtil.manrope12w500(
                      color: context.black03,
                    ),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: context.black07,
                  thickness: 1.5,
                )),
              ],
            ),
            20.kheightBox,
            Row(
              mainAxisAlignment: controller.isApple.value
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                Obx(() {
                  if (controller.isApple.value) {
                    return Container(
                      height: 48.kh,
                      width: 103.kw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.kw),
                          border: Border.all(
                            color: context.black07,
                          )),
                      child: Center(
                        child: CommonImageView(
                          svgPath: ImageConstant.appleLogo,
                          width: 24,
                        ),
                      ),
                    );
                  } else {
                    return 0.kwidthBox;
                  }
                }),
                Container(
                  height: 48.kh,
                  width: 103.kw,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.kw),
                      border: Border.all(
                        color: context.black07,
                      )),
                  child: Center(
                    child: CommonImageView(
                      svgPath: ImageConstant.facebookLogo,
                      width: 24,
                    ),
                  ),
                ),
                controller.isApple.value ? Container() : 20.kwidthBox,
                InkWell(
                  onTap: () {
                    // controller.loginWithGoogle();
                  },
                  child: Container(
                    height: 48.kh,
                    width: 103.kw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.kw),
                        border: Border.all(
                          color: context.black07,
                        )),
                    child: Center(
                      child: CommonImageView(
                        svgPath: ImageConstant.googleLogo,
                        width: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      StringConstant.dontHaveAccount,
                      style: TextStyleUtil.manrope14w500(
                        color: context.black04,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.tollgeToSignup();
                      },
                      child: Text(
                        StringConstant.createAccount,
                        style: TextStyleUtil.manrope14w600(
                          color: context.pBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            30.kheightBox,
          ],
        ),
      ),
    ));
  }
}
