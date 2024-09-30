import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard(
      {super.key, required this.imgUrl, required this.title});
  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 100.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.kh, horizontal: 6.kw),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.kw),
              child: CommonImageView(
                url: imgUrl,
                height: 48.kh,
                width: 48.kw,
              ),
            ),
            10.kwidthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyleUtil.manrope14w600(),
                ),
                5.kheightBox,
                Row(
                  children: [
                    CommonImageView(
                      svgPath: ImageConstant.locationIcon,
                      svgColor: context.black03,
                    ),
                    8.kwidthBox,
                    Text(
                      "20 Church Street, Lancanster adasdasd",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyleUtil.manrope12w400(
                          color: context.black03,
                          textDecoration: TextDecoration.underline),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
