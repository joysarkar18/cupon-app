import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/components/custom_button_with_border.dart';
import 'package:cuponi/app/components/filer_animated_options.dart';
import 'package:cuponi/app/components/price_bar.dart';
import 'package:cuponi/app/components/rating_card.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/filters_controller.dart';

class FiltersView extends GetView<FiltersController> {
  const FiltersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: StringConstant.filters,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.kw),
          child: Column(
            children: [
              const RatingCard(),
              const PriceBar(),
              Container(
                height: 163.kh,
                width: 100.w,
                margin: EdgeInsets.only(bottom: 16.kh),
                padding: EdgeInsets.all(12.kw),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.kw),
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: context.borderColor1),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConstant.location,
                          style: TextStyleUtil.manrope16w600(),
                        ),
                      ],
                    ),
                    10.kheightBox,
                    Container(
                      height: 49.kh,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(32)),
                      child: Center(
                        child: Row(
                          children: [
                            20.kwidthBox,
                            Icon(
                              Icons.location_on,
                              size: 20,
                            ),
                            Text(
                              " Avenida Revolución 120, Mexico City",
                              style: TextStyleUtil.manrope14w400(
                                  // color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    10.kheightBox,
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          color: context.black05,
                        )),
                        5.kwidthBox,
                        Text(
                          StringConstant.or,
                          style: TextStyleUtil.montserrat14w400(),
                        ),
                        5.kwidthBox,
                        Expanded(
                            child: Divider(
                          color: context.black05,
                        )),
                      ],
                    ),
                    5.kheightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.my_location_sharp,
                          color: context.pBlue,
                        ),
                        6.kwidthBox,
                        Text(
                          StringConstant.useMyCurrentLocation,
                          style: TextStyleUtil.montserrat16w600(
                              color: context.pBlue,
                              textDecoration: TextDecoration.underline),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButtonWithBorder(
                      buttonText: StringConstant.clearAll,
                      width: 43.w,
                      height: 56.kh,
                      onPressed: () {}),
                  CustomYellowElevatedButton(
                      height: 56.kh,
                      buttonText: StringConstant.apply,
                      width: 43.w,
                      textStyle:
                          TextStyleUtil.montserrat16w500(color: context.pBlue),
                      onPressed: () {}),
                ],
              ),
              10.kheightBox,
            ],
          ),
        ));
  }
}
