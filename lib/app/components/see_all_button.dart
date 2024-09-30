import 'package:cuponi/app/services/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key, required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          "See All",
          style: GoogleFonts.manrope(
            textStyle:
                TextStyle(color: context.pBlue, fontWeight: FontWeight.w400),
          ),
        ));
  }
}
