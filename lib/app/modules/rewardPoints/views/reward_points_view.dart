import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/rewards_point_card.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/reward_points_controller.dart';

class RewardPointsView extends GetView<RewardPointsController> {
  const RewardPointsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstant.rewardsPoints,
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            SizedBox(
              width: 100.w,
              height: 100,
              child: Stack(
                children: [
                  CommonImageView(
                    svgPath: ImageConstant.rewardsPointBanner,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        20.kheightBox,
                        Text(
                          "420",
                          style: TextStyleUtil.montserrat24w700(
                              color: context.pBlue),
                        ),
                        Text(
                          StringConstant.totalRewardPoints,
                          style: TextStyleUtil.montserrat16w500(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
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
                        text: StringConstant.earned,
                      ),
                      Tab(
                        text: StringConstant.used,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.h - 260,
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        child: Column(
                            children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4]
                                .map(
                                  (e) => RewardPointCard(),
                                )
                                .toList()),
                      ),
                      SingleChildScrollView(
                        child: Column(
                            children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4]
                                .map(
                                  (e) => RewardPointCard(),
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
