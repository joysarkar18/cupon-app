import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class RecentSearch extends StatelessWidget {
  const RecentSearch({super.key, required this.imgUrl, required this.title});
  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.kh),
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
          Text(
            title,
            style: TextStyleUtil.manrope14w500(),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close))
        ],
      ),
    );
  }
}
