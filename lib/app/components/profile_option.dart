import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:flutter/material.dart';

import '../services/text_style_util.dart';

class ProfileOption extends StatelessWidget {
  const ProfileOption(
      {super.key,
      required this.svgPath,
      required this.text,
      required this.onTap});
  final String svgPath;
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 56.kh,
        width: 100.w,
        padding: EdgeInsets.symmetric(horizontal: 20.kw),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border(bottom: BorderSide(color: context.borderColor2))),
        child: Row(
          children: [
            CommonImageView(
              svgPath: svgPath,
              svgColor: context.pBlue,
            ),
            16.kwidthBox,
            Text(
              text,
              style: TextStyleUtil.manrope14w400(),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: context.black01,
            )
          ],
        ),
      ),
    );
  }
}
