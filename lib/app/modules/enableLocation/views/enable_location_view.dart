import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/enable_location_controller.dart';

class EnableLocationView extends GetView<EnableLocationController> {
  const EnableLocationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(16.kw),
      child: SizedBox(
        width: 100.w,
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              ImageConstant.enableLocation,
            ),
            20.kheightBox,
            Text(
              StringConstant.enableLocation,
              style: TextStyleUtil.manrope24w600(),
            ),
            10.kheightBox,
            Text(
              StringConstant.enableLocationText,
              textAlign: TextAlign.center,
              style: TextStyleUtil.manrope16w400(color: context.black03),
            ),
            const Spacer(),
            CustomYellowElevatedButton(
                buttonText: StringConstant.allowAccess,
                height: 56.kh,
                width: 100.w,
                textStyle: TextStyleUtil.montserrat16w600(color: context.pBlue),
                onPressed: () {
                  Get.toNamed(Routes.SET_PREFERENCE);
                }),
            20.kheightBox,
          ],
        ),
      ),
    ));
  }
}
