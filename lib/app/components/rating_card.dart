import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.kh,
      margin: EdgeInsets.only(bottom: 16.kh),
      padding: EdgeInsets.all(12.kw),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.kw),
          color: Colors.white,
          border: Border(bottom: BorderSide(color: context.borderColor1))),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                StringConstant.rating,
                style: TextStyleUtil.manrope16w600(),
              ),
            ],
          ),
          //add starts here
          const Spacer(),
          RatingBar(
            initialRating: 3,
            direction: Axis.horizontal,
            //  allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full: CommonImageView(
                svgPath: ImageConstant.filledStar,
              ),
              empty: CommonImageView(
                svgPath: ImageConstant.emptyStar,
              ),
              half: CommonImageView(
                svgPath: ImageConstant.emptyStar,
              ),
            ),
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ],
      ),
    );
  }
}
