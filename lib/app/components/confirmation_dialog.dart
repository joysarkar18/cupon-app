import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/components/custom_button_with_border.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class ConfrimationDialog extends StatelessWidget {
  const ConfrimationDialog(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onYesTap,
      required this.onNoTap});
  final String title;
  final String subTitle;
  final Function onYesTap;
  final Function onNoTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyleUtil.manrope18w600(),
      ),
      content: Text(
        subTitle,
        style: TextStyleUtil.manrope14w400(color: context.black03),
      ),
      shape:
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20.kw)),
      actions: [
        Row(
          children: <Widget>[
            CustomElevatedButtonWithBorder(
                buttonText: StringConstant.no,
                height: 40.kh,
                width: 120.kw,
                onPressed: () {
                  onNoTap();
                }),
            10.kwidthBox,
            CustomYellowElevatedButton(
                buttonText: StringConstant.yes,
                height: 40.kh,
                width: 120.kw,
                textStyle: TextStyleUtil.montserrat16w600(color: context.pBlue),
                onPressed: () {
                  onYesTap();
                }),
          ],
        ),
      ],
    );
  }
}
