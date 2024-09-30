import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/nav_bar_controller.dart';

class NavBarView extends GetView<NavBarController> {
  const NavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomNavigationBar: BottomAppBar(
              height: 62.kh,
              color: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 62.kh,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BottomNavItem(
                          icon: ImageConstant.homeIcon,
                          label: StringConstant.home,
                          isSelected:
                              controller.selectedTab.value == BottomTab.home,
                          onPressed: () {
                            controller.changeTab(BottomTab.home);
                          },
                        ),
                        BottomNavItem(
                          icon: ImageConstant.couponsIcon,
                          label: StringConstant.coupons,
                          isSelected:
                              controller.selectedTab.value == BottomTab.coupons,
                          onPressed: () {
                            controller.changeTab(BottomTab.coupons);
                          },
                        ),
                        BottomNavItem(
                          icon: ImageConstant.challengesIcon,
                          label: StringConstant.challenges,
                          isSelected: controller.selectedTab.value ==
                              BottomTab.challenges,
                          onPressed: () {
                            controller.changeTab(BottomTab.challenges);
                          },
                        ),
                        BottomNavItem(
                          icon: ImageConstant.favIcon,
                          label: StringConstant.favorites,
                          isSelected: controller.selectedTab.value ==
                              BottomTab.favorites,
                          onPressed: () {
                            controller.changeTab(BottomTab.favorites);
                          },
                        ),
                        BottomNavItem(
                          icon: ImageConstant.profileIcon,
                          label: StringConstant.profile,
                          isSelected:
                              controller.selectedTab.value == BottomTab.profile,
                          onPressed: () {
                            controller.changeTab(BottomTab.profile);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          body: controller.pages[controller.selectedTab.value],
        ));
  }
}

class BottomNavItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: onPressed,
      child: SizedBox(
        width: 65.kw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              icon,
              color: isSelected ? context.pBlue : context.black03,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(label,
                  style: TextStyleUtil.manrope12w500(
                    color: isSelected ? context.pBlue : context.black03,
                  )),
            ),
            10.kheightBox,
          ],
        ),
      ),
    );
  }
}
