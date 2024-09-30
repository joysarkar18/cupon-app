import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/coupon_available_card.dart';
import 'package:cuponi/app/components/homePage/featured_offer_card.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../controllers/vendor_details_controller.dart';

class VendorDetailsView extends GetView<VendorDetailsController> {
  const VendorDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 325.kh,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.kw),
                        bottomRight: Radius.circular(8.kw)),
                    child: CommonImageView(
                      height: 264.kh,
                      fit: BoxFit.cover,
                      url:
                          "https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16.kw, right: 16.kw, top: 50.kw),
                    child: Row(
                      children: [
                        Container(
                          height: 32.kh,
                          width: 32.kw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.kw),
                            color: Colors.white,
                          ),
                          child: IconButton(
                            icon: CommonImageView(
                              svgPath: ImageConstant.backIcon,
                              svgColor: context.pBlue,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ),
                        const Spacer(),
                        if (Get.arguments != null)
                          Container(
                            height: 32.kh,
                            width: 32.kw,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.kw),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.add,
                                    color: context.pBlue,
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                        20.kwidthBox,
                        Container(
                          height: 32.kh,
                          width: 32.kw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.kw),
                            color: context.primary07,
                          ),
                          child: Center(
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              icon: Icon(
                                Icons.favorite_outline_outlined,
                                color: context.pBlue,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        20.kwidthBox,
                        Container(
                          height: 32.kh,
                          width: 32.kw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.kw),
                            color: context.primary07,
                          ),
                          child: Center(
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              icon: Icon(
                                Icons.share,
                                color: context.pBlue,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.kw),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          20.kheightBox,
                          Container(
                            height: 121.kh,
                            width: 100.w,
                            padding: EdgeInsets.all(16.kw),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: context.black07, blurRadius: 2)
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.kw)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Domino's",
                                  style: TextStyleUtil.manrope24w700(
                                      color: context.black01),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Pizza",
                                      style: TextStyleUtil.manrope14w400(
                                          color: context.black01),
                                    ),
                                    Container(
                                      height: 4,
                                      width: 4,
                                      margin: EdgeInsets.only(
                                          left: 6.kw, right: 6.kw, top: 4.kh),
                                      decoration: BoxDecoration(
                                          color: context.black01,
                                          borderRadius:
                                              BorderRadius.circular(2.ksp)),
                                    ),
                                    Text(
                                      "Italian",
                                      style: TextStyleUtil.manrope14w400(
                                          color: context.black01),
                                    ),
                                    Container(
                                      height: 4,
                                      width: 4,
                                      margin: EdgeInsets.only(
                                          left: 6.kw, right: 6.kw, top: 4.kh),
                                      decoration: BoxDecoration(
                                          color: context.black01,
                                          borderRadius:
                                              BorderRadius.circular(2.ksp)),
                                    ),
                                    Text(
                                      "Fast Food",
                                      style: TextStyleUtil.manrope14w400(
                                          color: context.black01),
                                    ),
                                  ],
                                ),
                                Text(
                                  "£20 for 2 people",
                                  style: TextStyleUtil.manrope14w400(
                                      color: context.black03),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            10.kheightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.kw),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 16.kh, horizontal: 10.kw),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstant.couponsAvailable,
                          style: TextStyleUtil.manrope16w600(),
                        ),
                        10.kheightBox,
                        SizedBox(
                          height: 164.kh,
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.only(right: 10.kw),
                              child: CouponAvailableCard(
                                  description:
                                      "Save upto £20 with\nthis coupon.",
                                  price: "Flat 20% OFF",
                                  width: 75.w),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  10.kheightBox,
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.RATING_AND_REVIEW);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.kh, horizontal: 10.kw),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringConstant.ratingAndReview,
                            style: TextStyleUtil.manrope16w600(),
                          ),
                          10.kheightBox,
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    RatingBar(
                                      initialRating: 4.0,
                                      direction: Axis.horizontal,
                                      //  allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 26.kw,
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
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      onRatingUpdate: (rating) {},
                                    ),
                                    10.kwidthBox,
                                    Text(
                                      "4 out of 5",
                                      style: TextStyleUtil.manrope16w400(),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 15.kw,
                                        )),
                                  ],
                                ),
                                10.kheightBox,
                                Text(
                                  "Sam Smith",
                                  style: TextStyleUtil.manrope14w600(),
                                ),
                                2.kheightBox,
                                Text(
                                  "Amazing food and great quality and quantity.",
                                  style: TextStyleUtil.manrope14w400(),
                                ),
                                10.kheightBox,
                                Text(
                                  "Sam Smith",
                                  style: TextStyleUtil.manrope14w600(),
                                ),
                                2.kheightBox,
                                Text(
                                  "Amazing food and great quality and quantity.",
                                  style: TextStyleUtil.manrope14w400(
                                      color: context.black03),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  10.kheightBox,
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 16.kh, horizontal: 10.kw),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstant.location,
                          style: TextStyleUtil.manrope16w600(
                              color: context.black01),
                        ),
                        16.kheightBox,
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_rounded,
                              size: 20,
                            ),
                            4.kwidthBox,
                            Text(
                              "20 Church Street, Lancaster LA1 1NP",
                              style: TextStyleUtil.manrope14w400(),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  40.kheightBox,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
