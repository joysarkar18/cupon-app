import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class RewardPointCard extends StatelessWidget {
  const RewardPointCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 61.kh,
        margin: const EdgeInsets.all(18),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Id #578439",
                  style: TextStyleUtil.montserrat16w500(),
                ),
                Text(
                  "17 June 2024",
                  style: TextStyleUtil.montserrat14w500(color: context.black03),
                )
              ],
            ),
            Text(
              "+50",
              style: TextStyleUtil.montserrat16w600(color: context.pBlue),
            ),
          ],
        ));
  }
}
