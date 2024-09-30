import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/homePage/exclusive_offer_card.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/exclusive_offer_controller.dart';

class ExclusiveOfferView extends GetView<ExclusiveOfferController> {
  const ExclusiveOfferView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: StringConstant.exclusiveOffers),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.kw),
            child: Column(
              children: [
                ...[1, 3, 4, 4, 5, 5, 5, 5].map(
                  (e) => Padding(
                    padding: EdgeInsets.only(bottom: 12.kh),
                    child: ExclusiveOfferCard(
                        brandName: "Domino's",
                        description: "Save upto £20 with\nthis coupon.",
                        price: "Flat 20% OFF",
                        width: 100.w - 36.kw),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
