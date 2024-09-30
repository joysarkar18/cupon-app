import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: controller.pageCount.value == 0
                  ? const Color(0xff26AEE0)
                  : controller.pageCount.value == 1
                      ? const Color(0xffFFB6A7)
                      : context.yellow01),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: PageView(
                  onPageChanged: (value) {
                    controller.changePageCount(n: value);
                  },
                  controller: controller.pageController,
                  children: [
                    Column(
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.onboarding1Image1,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.onboarding1Image2,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.onboarding1Image3,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 45.h,
                  width: 100.w,
                  padding: const EdgeInsets.only(top: 28, left: 18, right: 18),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32.kw),
                          topRight: Radius.circular(32.kw))),
                  child: Column(
                    children: [
                      Text(StringConstant.onboardingHeading1,
                          textAlign: TextAlign.center,
                          style: TextStyleUtil.montserrat24w700(
                              color: context.pBlue)),
                      20.kheightBox,
                      Text(StringConstant.onboardingSubHeading1,
                          textAlign: TextAlign.center,
                          style: TextStyleUtil.montserrat16w400()),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                StringConstant.skip,
                                style: TextStyleUtil.montserrat16w500(
                                    color: context.black02),
                              )),
                          Container(
                            height: 68.kh,
                            width: 68.kw,
                            decoration: BoxDecoration(
                                color: context.pBlue,
                                borderRadius: BorderRadius.circular(30.kw)),
                            child: Center(
                              child: IconButton(
                                onPressed: controller.incrementPage,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 34.kh,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      20.kheightBox,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
