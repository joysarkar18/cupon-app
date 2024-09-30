import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/components/custom_button_with_border.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/modules/setPreference/controllers/set_preference_controller.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SetPreferenceView extends GetView<SetPreferenceController> {
  const SetPreferenceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: SizedBox(
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.all(16.kw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringConstant.setPreferences,
                  style: TextStyleUtil.manrope32w700(),
                ),
                20.kheightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Food & Beverages",
                      style: TextStyleUtil.manrope14w400(),
                    ),
                    Checkbox(
                      checkColor: context.pBlue,
                      fillColor: MaterialStateProperty.all(Colors.transparent),
                      value: false,
                      onChanged: (bool? value) {},
                      side: BorderSide(
                        color: context
                            .pBlue, // Change border color when not checked
                        width: 2.0, // Border width
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fashion & Apparel",
                      style: TextStyleUtil.manrope14w400(),
                    ),
                    Checkbox(
                      checkColor: context.pBlue,
                      fillColor: MaterialStateProperty.all(Colors.transparent),
                      value: false,
                      onChanged: (bool? value) {},
                      side: BorderSide(
                        color: context
                            .pBlue, // Change border color when not checked
                        width: 2.0, // Border width
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Health & Beauty",
                      style: TextStyleUtil.manrope14w400(),
                    ),
                    Checkbox(
                      checkColor: context.pBlue,
                      fillColor: MaterialStateProperty.all(Colors.transparent),
                      value: false,
                      onChanged: (bool? value) {},
                      side: BorderSide(
                        color: context
                            .pBlue, // Change border color when not checked
                        width: 2.0, // Border width
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Home & Living",
                      style: TextStyleUtil.manrope14w400(),
                    ),
                    Checkbox(
                      checkColor: context.pBlue,
                      fillColor: MaterialStateProperty.all(Colors.transparent),
                      value: false,
                      onChanged: (bool? value) {},
                      side: BorderSide(
                        color: context
                            .pBlue, // Change border color when not checked
                        width: 2.0, // Border width
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Entertainment",
                      style: TextStyleUtil.manrope14w400(),
                    ),
                    Checkbox(
                      checkColor: context.pBlue,
                      fillColor: MaterialStateProperty.all(Colors.transparent),
                      value: false,
                      onChanged: (bool? value) {},
                      side: BorderSide(
                        color: context
                            .pBlue, // Change border color when not checked
                        width: 2.0, // Border width
                      ),
                    )
                  ],
                ),
                const Spacer(),
                CustomYellowElevatedButton(
                    buttonText: StringConstant.continuee,
                    height: 56.kh,
                    width: 100.w,
                    textStyle:
                        TextStyleUtil.manrope16w600(color: context.pBlue),
                    onPressed: () {
                      Get.toNamed(Routes.NAV_BAR);
                    }),
                16.kheightBox,
                CustomElevatedButtonWithBorder(
                    buttonText: StringConstant.skip,
                    width: 100.w,
                    height: 56.kh,
                    onPressed: () {}),
                20.kheightBox,
              ],
            ),
          ),
        ));
  }
}
