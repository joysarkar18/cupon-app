import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCouponCard extends StatelessWidget {
  const MyCouponCard({super.key, required this.isRedeemed});
  final bool isRedeemed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142,
      width: 100.w,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: context.borderColor2)),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CommonImageView(
                height: 48,
                width: 48,
                url:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Dominos_pizza_logo.svg/640px-Dominos_pizza_logo.svg.png",
              ),
              10.kwidthBox,
              Text(
                "Domino’s Pizza",
                style: TextStyleUtil.montserrat16w600(),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flat 20% OFF",
                    style: TextStyleUtil.montserrat16w500(),
                  ),
                  Text(
                    "Redeemed on 30th May 2024, 12:30 pm  ",
                    style: TextStyleUtil.montserrat14w400(
                      color: context.black03,
                    ),
                  )
                ],
              ),
              if (!isRedeemed)
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.SCAN_Q_R_CODE);
                  },
                  child: CommonImageView(
                    svgPath: ImageConstant.qrCOde,
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
