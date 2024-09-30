import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWithBorder extends StatelessWidget {
  final String buttonText;
  final double width;
  final VoidCallback onPressed;
  final double height;

  const CustomElevatedButtonWithBorder({
    super.key,
    required this.buttonText,
    required this.width,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: context.pBlue,
          backgroundColor:
              Colors.white, // Set the text color to red when pressed
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0), // Fully rounded corners
            side: BorderSide(color: context.pBlue, width: 2.kw), // Border color
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: context.pBlue, // Set the text color to black01
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
