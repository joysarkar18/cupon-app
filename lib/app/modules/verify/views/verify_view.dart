import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/modules/verify/views/verification_done_screen.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  const VerifyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: "",
        ),
        body: Padding(
          padding: EdgeInsets.all(16.kw),
          child: SizedBox(
            width: 100.w,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      StringConstant.verify,
                      style: TextStyleUtil.manrope32w700(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      StringConstant.verifyYourAccount,
                      style: TextStyleUtil.manrope16w400(
                        color: context.black03,
                      ),
                    ),
                  ],
                ),
                80.kheightBox,
                Text(
                  StringConstant.verificationCodeSent,
                  textAlign: TextAlign.center,
                  style: TextStyleUtil.manrope16w400(
                    color: context.black03,
                  ),
                ),
                6.kheightBox,
                Text(
                  "joysarkar8171@gmail.com",
                  style: TextStyleUtil.manrope16w500(),
                ),
                90.kheightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringConstant.didntGetCode,
                      style: TextStyleUtil.manrope14w500(
                        color: context.black04,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // controller.resendVerificationEmail();
                        Get.to(VerificationDoneScreen());
                      },
                      child: Text(
                        StringConstant.resend,
                        style: TextStyleUtil.manrope14w600(
                          color: context.pBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
