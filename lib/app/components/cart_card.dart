import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.dateShow});

  final bool dateShow;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CommonImageView(
                  height: 64,
                  width: 64,
                  fit: BoxFit.cover,
                  url:
                      "https://www.eatingwell.com/thmb/k3RhYf4XhAeqAejYjdInOlSOp6I=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gettyimages-1124303516-36413b5bf61f45f1b7d18d90000b56b7.jpg",
                ),
              ),
              10.kwidthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Domino’s Pizza",
                    style: TextStyleUtil.montserrat16w600(),
                  ),
                  4.kheightBox,
                  Text(
                    "20% off + 20% card offer",
                    style:
                        TextStyleUtil.montserrat14w500(color: context.black03),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  CommonImageView(
                    svgPath: ImageConstant.deleteIcon,
                  )
                ],
              )
            ],
          ),
          4.kheightBox,
          Divider(
            color: context.black05,
          ),
          Row(
            children: [
              Text(
                "Quantity: 5",
                style: TextStyleUtil.montserrat14w500(),
              ),
              Icon(Icons.keyboard_arrow_down_rounded),
              Spacer(),
              Text(
                "\$15",
                style: TextStyleUtil.montserrat18w700(color: context.pBlue),
              ),
            ],
          ),
          if (dateShow)
            Container(
              height: 56.kh,
              width: 100.w,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  color: Color(0xffDDE5F1),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Can be redeemed on 12 / 07 / 2024 at 4:00 pm only.",
                  style: TextStyleUtil.montserrat14w500(color: context.pBlue),
                ),
              ),
            )
        ],
      ),
    );
  }
}
