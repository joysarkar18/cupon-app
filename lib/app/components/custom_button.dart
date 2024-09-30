import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class CustomYellowElevatedButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final Widget? leadingIcon;
  final TextStyle? textStyle;
  final Color? buttonColor;

  const CustomYellowElevatedButton({
    super.key,
    required this.buttonText,
    required this.height,
    required this.width,
    required this.onPressed,
    this.leadingIcon,
    this.textStyle,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? context.yellow01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null) leadingIcon!,
            6.kwidthBox,
            if (buttonText.isNotEmpty && textStyle == null)
              Text(buttonText,
                  style: TextStyleUtil.manrope16w500(color: Colors.white)),
            if (buttonText.isNotEmpty && textStyle != null)
              Text(buttonText, style: textStyle),
          ],
        ),
      ),
    );
  }
}
