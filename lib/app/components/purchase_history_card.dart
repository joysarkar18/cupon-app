import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class PurchaseHistoryCard extends StatelessWidget {
  const PurchaseHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Id #578439",
            style: TextStyleUtil.montserrat16w600(),
          ),
          8.kheightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 72.w,
                child: Text(
                  "Domino’s Pizza (Flat 20% Off) , Burger Club( Flat 10% Off)",
                  style: TextStyleUtil.montserrat14w500(color: context.black03),
                ),
              ),
              Text(
                "\$120",
                style: TextStyleUtil.montserrat16w600(color: context.pBlue),
              )
            ],
          ),
          8.kheightBox,
          Text(
            "30th May 2024, 12:30 pm  ",
            style: TextStyleUtil.montserrat12w400(color: context.black03),
          )
        ],
      ),
    );
  }
}
