import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class AddedSuccessfullBottomSheet extends StatelessWidget {
  const AddedSuccessfullBottomSheet({super.key, required this.subTitle});
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 486.kh,
      width: 100.w,
      padding: EdgeInsets.all(16.kw),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.kw),
              topRight: Radius.circular(24.kw))),
      child: Column(
        children: [
          Container(
            height: 5.kh,
            width: 64.kw,
            decoration: BoxDecoration(
                color: context.black01, borderRadius: BorderRadius.circular(3)),
          ),
          const Spacer(),
          CommonImageView(
            svgPath: ImageConstant.wow,
            height: 230,
          ),
          10.kheightBox,
          Text(
            StringConstant.addToCartTitle,
            style: TextStyleUtil.montserrat24w700(color: context.pBlue),
          ),
          2.kheightBox,
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyleUtil.montserrat16w400(color: context.black03),
          ),
          30.kheightBox,
          CustomYellowElevatedButton(
              buttonText: StringConstant.continuee,
              height: 54.kh,
              width: 100.w,
              textStyle: TextStyleUtil.montserrat16w600(color: context.pBlue),
              onPressed: () {}),
          50.kheightBox,
        ],
      ),
    );
  }
}
