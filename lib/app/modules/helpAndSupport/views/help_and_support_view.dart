import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/custom_textfield.dart';
import 'package:cuponi/app/components/help_and_support_qna_card.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/help_and_support_controller.dart';

class HelpAndSupportView extends GetView<HelpAndSupportController> {
  const HelpAndSupportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: StringConstant.helpAndSupport,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.kw),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: context.black07),
                      borderRadius: BorderRadius.circular(8.kw)),
                  child: const CustomTextField(
                      prefixIcon: Icons.search_rounded,
                      fillColor: Colors.white,
                      hintText: StringConstant.howCanWeHelpYou),
                ),
                20.kheightBox,
                Row(
                  children: [
                    Text(
                      StringConstant.faqs,
                      style: TextStyleUtil.manrope16w500(),
                    ),
                    10.kwidthBox,
                    Expanded(
                        child: Divider(
                      color: context.black05,
                    ))
                  ],
                ),
                20.kheightBox,
                ...[1, 2, 3, 4, 4].map((e) => Padding(
                      padding: EdgeInsets.only(bottom: 10.kh),
                      child: const HelpAndSupportQNACaed(),
                    )),
                10.kheightBox,
                Divider(
                  color: context.black05,
                ),
                20.kheightBox,
                Container(
                  height: 56.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.kw),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.kw),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: context.pBlue,
                      ),
                      10.kwidthBox,
                      Text(
                        "Send us an e-mail at  ",
                        style: TextStyleUtil.manrope14w500(),
                      ),
                      Text(
                        "Info@tfs.com",
                        style:
                            TextStyleUtil.manrope14w500(color: context.pBlue),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
