import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentSuccessfunScreen extends StatelessWidget {
  const PaymentSuccessfunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CommonImageView(
              svgPath: ImageConstant.wow,
              width: 100.w - 60,
            ),
            30.kheightBox,
            Text(
              StringConstant.congratulations,
              style: TextStyleUtil.montserrat24w700(color: context.pBlue),
            ),
            10.kheightBox,
            Text(
              StringConstant.couponsPurchaseduccessfully,
              style: TextStyleUtil.montserrat16w400(color: context.black04),
            ),
            60.kheightBox,
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomYellowElevatedButton(
                buttonText: StringConstant.continuee,
                height: 56.kh,
                width: 100.w,
                onPressed: () {
                  Get.back();
                },
                textStyle: TextStyleUtil.montserrat16w600(color: context.pBlue),
              ),
            ),
            40.kheightBox,
          ],
        ),
      ),
    );
  }
}
