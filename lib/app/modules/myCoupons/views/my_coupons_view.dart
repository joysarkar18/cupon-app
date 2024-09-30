import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/custom_textfield.dart';
import 'package:cuponi/app/components/my_coupon_card.dart';
import 'package:cuponi/app/components/rewards_point_card.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_coupons_controller.dart';

class MyCouponsView extends GetView<MyCouponsController> {
  const MyCouponsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstant.myCoupons,
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
                        text: StringConstant.availableCoupons,
                      ),
                      Tab(
                        text: StringConstant.redeemedCoupons,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.h - 203.kh,
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        padding: const EdgeInsets.all(18),
                        child: Column(children: [
                          const CustomTextField(
                              fillColor: Colors.white,
                              prefixIcon: Icons.search,
                              hintText: StringConstant.searchCoupo),
                          ...[1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4].map(
                            (e) => const MyCouponCard(
                              isRedeemed: false,
                            ),
                          )
                        ]),
                      ),
                      SingleChildScrollView(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                            children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4]
                                .map(
                                  (e) => const MyCouponCard(
                                    isRedeemed: true,
                                  ),
                                )
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
