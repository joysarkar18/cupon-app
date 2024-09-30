import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/homePage/featured_offer_card.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstant.favorites,
        leading: SizedBox(),
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: context.pBlue,
                    labelStyle: TextStyleUtil.manrope14w500(),
                    labelColor: context.pBlue,
                    tabs: const <Widget>[
                      Tab(
                        text: StringConstant.offers,
                      ),
                      Tab(
                        text: StringConstant.vendors,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.h - 203.kh,
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                            children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4]
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: FeaturedOfferCard(
                                        brandName: "Domino's",
                                        description:
                                            "Save upto £20 with\nthis coupon.",
                                        price: "Flat 20% OFF",
                                        width: 100.w),
                                  ),
                                )
                                .toList()),
                      ),
                      SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 10,
                        ),
                        child: Column(
                            children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4]
                                .map((e) => InkWell(
                                      onTap: () {
                                        Get.toNamed(Routes.VENDOR_DETAILS);
                                      },
                                      child: Container(
                                        width: 100.w,
                                        margin: const EdgeInsets.only(
                                          bottom: 24,
                                        ),
                                        child: Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: CommonImageView(
                                                height: 48,
                                                width: 48,
                                                url:
                                                    "https://i.pinimg.com/736x/29/a2/50/29a250fef4c1e5190dc14da037ca751f.jpg",
                                              ),
                                            ),
                                            10.kwidthBox,
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Domino’s  Pizza",
                                                  style: TextStyleUtil
                                                      .montserrat14w600(),
                                                ),
                                                6.kheightBox,
                                                Row(
                                                  children: [
                                                    CommonImageView(
                                                      svgPath: ImageConstant
                                                          .locationIconGray,
                                                      svgColor: context.pBlue,
                                                    ),
                                                    4.kwidthBox,
                                                    Text(
                                                      "20 Church Street, Lancaster...",
                                                      style: TextStyleUtil
                                                          .montserrat12w400(
                                                        color: context.black03,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  size: 20,
                                                  Icons.favorite,
                                                  color: context.pBlue,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ))
                                .toList()),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
