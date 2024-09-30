import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/components/custom_text_box.dart';
import 'package:cuponi/app/components/rating_indicator.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../controllers/rating_and_review_controller.dart';

class RatingAndReviewView extends GetView<RatingAndReviewController> {
  const RatingAndReviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstant.ratingAndReview,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16.kw),
          child: Column(
            children: [
              Container(
                height: 120.kh,
                width: 100.w,
                padding:
                    EdgeInsets.symmetric(horizontal: 10.kw, vertical: 16.kh),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.kw),
                    border: Border(
                        bottom: BorderSide(color: context.borderColor1))),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "4.0",
                          style: TextStyleUtil.manrope24w500(),
                        ),
                        const RatingIndicator(rating: 4),
                        Text(
                          "( 4,100 )",
                          style: TextStyleUtil.manrope14w400(),
                        )
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 40.w,
                      child: Column(
                        children: [
                          20.kheightBox,
                          LinearProgressIndicator(
                            color: context.golden,
                            borderRadius: BorderRadius.circular(4.kh),
                            minHeight: 4.kh,
                            value: 0.9,
                          ),
                          10.kheightBox,
                          LinearProgressIndicator(
                            color: context.golden,
                            borderRadius: BorderRadius.circular(4.kh),
                            minHeight: 4.kh,
                            value: 0.7,
                          ),
                          10.kheightBox,
                          LinearProgressIndicator(
                            color: context.golden,
                            borderRadius: BorderRadius.circular(4.kh),
                            minHeight: 4.kh,
                            value: 0.4,
                          ),
                          10.kheightBox,
                          LinearProgressIndicator(
                            color: context.golden,
                            borderRadius: BorderRadius.circular(4.kh),
                            minHeight: 4.kh,
                            value: 0.3,
                          ),
                          10.kheightBox,
                          LinearProgressIndicator(
                            color: context.golden,
                            borderRadius: BorderRadius.circular(4.kh),
                            minHeight: 4.kh,
                            value: 0.1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              16.kheightBox,
              Container(
                width: 100.w,
                padding:
                    EdgeInsets.symmetric(horizontal: 10.kw, vertical: 16.kh),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.kw),
                    border: Border(
                        bottom: BorderSide(color: context.borderColor1))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstant.rateAndReview,
                      style: TextStyleUtil.manrope16w600(),
                    ),
                    8.kheightBox,
                    Text(
                      StringConstant.shareExprience,
                      style:
                          TextStyleUtil.manrope16w400(color: context.black03),
                    ),
                    16.kheightBox,
                    RatingBar(
                      initialRating: 3,
                      direction: Axis.horizontal,
                      //  allowHalfRating: true,
                      itemCount: 5,

                      ratingWidget: RatingWidget(
                        full: CommonImageView(
                          svgPath: ImageConstant.filledStar,
                        ),
                        empty: CommonImageView(
                          svgPath: ImageConstant.emptyStar,
                        ),
                        half: CommonImageView(
                          svgPath: ImageConstant.emptyStar,
                        ),
                      ),
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      onRatingUpdate: (rating) {},
                    ),
                    16.kheightBox,
                    Text(
                      StringConstant.shareMoreExp,
                      style: TextStyleUtil.manrope14w500(),
                    ),
                    8.kheightBox,
                    CustomTextBox(
                      fillColor: context.black07,
                      hintText: StringConstant.enterTextHere,
                    ),
                    10.kheightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomYellowElevatedButton(
                            buttonText: StringConstant.submit,
                            height: 40.kh,
                            width: 120.kw,
                            textStyle: TextStyleUtil.montserrat16w500(
                                color: context.pBlue),
                            onPressed: () {}),
                      ],
                    )
                  ],
                ),
              ),
              16.kheightBox,
              Container(
                width: 100.w,
                padding:
                    EdgeInsets.symmetric(horizontal: 10.kw, vertical: 16.kh),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.kw),
                    border: Border(
                        bottom: BorderSide(color: context.borderColor1))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstant.reviews,
                      style: TextStyleUtil.manrope16w600(),
                    ),
                    16.kheightBox,
                    ...[1, 2, 3, 4, 5].map((e) => Padding(
                          padding: EdgeInsets.only(bottom: 16.kh),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sam Smith",
                                style: TextStyleUtil.manrope14w600(),
                              ),
                              2.kheightBox,
                              Text(
                                "Amazing food and great quality and quantity.",
                                style: TextStyleUtil.manrope14w400(),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
