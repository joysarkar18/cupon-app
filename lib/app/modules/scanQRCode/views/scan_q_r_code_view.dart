import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/scan_q_r_code_controller.dart';

class ScanQRCodeView extends GetView<ScanQRCodeController> {
  const ScanQRCodeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstant.scanQrCode,
      ),
      body: SizedBox(
        width: 100.w,
        child: Padding(
          padding: EdgeInsets.all(16.kw),
          child: Column(
            children: [
              Text(
                StringConstant.provdeTheLoyaltyQr,
                style: TextStyleUtil.manrope18w600(),
              ),
              10.kheightBox,
              Text(
                StringConstant.provideTheLoyaltySub,
                textAlign: TextAlign.center,
                style: TextStyleUtil.manrope14w500(color: context.black04),
              ),
              40.kheightBox,
              CommonImageView(
                svgPath: ImageConstant.qrTemp,
              ),
              40.kheightBox,
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: context.black05,
                  )),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(StringConstant.or),
                  ),
                  Expanded(
                      child: Divider(
                    color: context.black05,
                  ))
                ],
              ),
              20.kheightBox,
              Text(
                StringConstant.provdeTheLoyaltyQr,
                style: TextStyleUtil.manrope18w600(),
              ),
              10.kheightBox,
              Text(
                StringConstant.provideTheLoyaltySub,
                textAlign: TextAlign.center,
                style: TextStyleUtil.manrope14w500(color: context.black04),
              ),
              20.kheightBox,
              const Row(
                children: [Text(StringConstant.couponCode)],
              ),
              10.kheightBox,
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(8),
                color: context.pBlue,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "adajdhaioiduwa389ahds",
                        style:
                            TextStyleUtil.manrope14w400(color: context.black02),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            StringConstant.copy,
                            style: TextStyleUtil.manrope16w500(
                              color: context.pBlue,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
