import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: StringConstant.changePassword,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.kw),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstant.oldPassword,
                style: TextStyleUtil.manrope14w500(color: context.pBlue),
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
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {},
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
              20.kheightBox,
              Row(
                children: [
                  Text(
                    StringConstant.newPassword,
                    style: TextStyleUtil.manrope14w500(color: context.pBlue),
                  ),
                  Text(
                    "*",
                    style:
                        TextStyleUtil.manrope14w400(color: context.primary01),
                  )
                ],
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
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove_red_eye_rounded,
                                  size: 18.kw,
                                )),
                            hintText: StringConstant.enterNewPassword,
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
              Row(
                children: [
                  Text(
                    StringConstant.confirmPassword,
                    style: TextStyleUtil.manrope14w500(color: context.pBlue),
                  ),
                  Text(
                    "*",
                    style:
                        TextStyleUtil.manrope14w400(color: context.primary01),
                  )
                ],
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
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove_red_eye_rounded,
                                  size: 18.kw,
                                )),
                            hintText: StringConstant.confirmPassword,
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
              const Spacer(),
              CustomYellowElevatedButton(
                  buttonText: StringConstant.save,
                  height: 56.kh,
                  width: 100.w,
                  textStyle:
                      TextStyleUtil.montserrat16w600(color: context.pBlue),
                  onPressed: Get.back),
            ],
          ),
        ));
  }
}
