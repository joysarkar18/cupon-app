import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/homePage/exclusive_offer_card.dart';
import 'package:cuponi/app/components/homePage/featured_offer_card.dart';
import 'package:cuponi/app/components/homePage/explore_cuisine_card.dart';
import 'package:cuponi/app/components/homePage/resturants_near_you_card.dart';
import 'package:cuponi/app/components/see_all_button.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 198.kh,
              width: 100.w,
              child: Stack(
                children: [
                  Container(
                    height: 175.kh,
                    width: 100.w,
                    padding:
                        EdgeInsets.only(top: 76.kh, left: 16.kw, right: 16.kw),
                    decoration: BoxDecoration(
                        color: context.pBlue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.kw),
                            bottomRight: Radius.circular(8.kw))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      StringConstant.welcome,
                                      style: TextStyleUtil.manrope24w600(
                                          color: Colors.white),
                                    ),
                                    Text("Joy Sarkar",
                                        style: TextStyleUtil.manrope24w600(
                                            color: Colors.white)),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.showLocationBottomSheet();
                                  },
                                  child: Row(
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.locationIcon,
                                      ),
                                      Text(
                                        "  20 Kolkata 69 road",
                                        style: TextStyleUtil.manrope14w400(
                                            color: Colors.white,
                                            textDecoration:
                                                TextDecoration.underline),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Get.toNamed(Routes.CART);
                                    },
                                    padding: const EdgeInsets.all(0),
                                    icon: CommonImageView(
                                      svgPath: ImageConstant.cart,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      Get.toNamed(Routes.NOTIFICATIONS);
                                    },
                                    padding: const EdgeInsets.all(0),
                                    icon: CommonImageView(
                                      svgPath: ImageConstant.notificationIcon,
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SEARCH_SCREEN);
                      },
                      child: Container(
                        width: 100.w,
                        height: 53.kh,
                        margin: EdgeInsets.only(left: 16.kw, right: 16.kw),
                        padding: EdgeInsets.only(left: 16.kw, right: 16.kw),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.kw),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0.6,
                              )
                            ]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.search_outlined),
                            10.kwidthBox,
                            Text(
                              StringConstant.homeSearch,
                              style: TextStyleUtil.manrope14w400(
                                  color: context.hintTextColor),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14.kw,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            20.kheightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.kw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstant.categories,
                    style: TextStyleUtil.manrope18w600(color: Colors.black),
                  ),
                  SeeAllButton(onPressed: () {
                    Get.toNamed(Routes.CATEGORIES);
                  })
                ],
              ),
            ),
            10.kheightBox,
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 16.kw, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 1.kw),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 7),
                        decoration: BoxDecoration(
                            color: context.yellow01,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Text(
                              "Food & Beverages",
                              style: TextStyleUtil.manrope14w600(
                                  color: context.pBlue),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 1.kw),
                      child: Text(
                        "Fashion & Apparel",
                        style:
                            TextStyleUtil.manrope14w600(color: context.black03),
                      ),
                    ),
                    Container(
                      height: 32.kh,
                      width: 60.kw,
                      decoration: BoxDecoration(
                        color: context.pBlue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "+5",
                          style: TextStyleUtil.montserrat12w500(
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            10.kheightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.kw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstant.featuredOffers,
                    style: TextStyleUtil.manrope18w600(color: Colors.black),
                  ),
                  SeeAllButton(onPressed: () {
                    Get.toNamed(Routes.FEATURED_OFFERS);
                  })
                ],
              ),
            ),
            Container(
              width: 100.w,
              height: 175.kh,
              padding: EdgeInsets.only(left: 16.kw),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(right: 10.kw),
                  child: FeaturedOfferCard(
                      brandName: "Domino's",
                      description: "Save upto £20 with\nthis coupon.",
                      price: "Flat 20% OFF",
                      width: 75.w),
                ),
              ),
            ),
            10.kheightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.kw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstant.exclusiveOffers,
                    style: TextStyleUtil.manrope18w600(color: Colors.black),
                  ),
                  SeeAllButton(onPressed: () {
                    Get.toNamed(Routes.EXCLUSIVE_OFFER);
                  })
                ],
              ),
            ),
            Container(
              width: 100.w,
              height: 175.kh,
              padding: EdgeInsets.only(left: 16.kw),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(right: 10.kw),
                  child: ExclusiveOfferCard(
                      brandName: "Domino's",
                      description: "Cuponi Offer 5% Off",
                      price: "Flat 20% OFF",
                      width: 75.w),
                ),
              ),
            ),
            10.kheightBox,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.kw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstant.dealsnearyou,
                    style: TextStyleUtil.manrope18w600(color: Colors.black),
                  ),
                  SeeAllButton(
                    onPressed: () {
                      Get.toNamed(Routes.DEALS_NEAR_YOU);
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 16.kw, right: 16.kw, bottom: 16.kw),
              child: Wrap(
                spacing: 10.kw,
                children: [
                  ...[1, 2, 3, 4, 5, 6].map(
                    (e) => InkWell(
                      onTap: () {},
                      child: const ResturantNearYouCard(
                        brand: "Domino's",
                        imgUrl:
                            "https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2.jpg",
                        location: "Park street",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
