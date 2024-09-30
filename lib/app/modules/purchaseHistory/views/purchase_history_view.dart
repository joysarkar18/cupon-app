import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/purchase_history_card.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/purchase_history_controller.dart';

class PurchaseHistoryView extends GetView<PurchaseHistoryController> {
  const PurchaseHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstant.purchaseHistory,
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
        child: Column(
          children: [
            ...[1, 2, 3, 4, 5].map((e) => const Padding(
                  padding: EdgeInsets.only(bottom: 14),
                  child: PurchaseHistoryCard(),
                )),
          ],
        ),
      ),
    );
  }
}
