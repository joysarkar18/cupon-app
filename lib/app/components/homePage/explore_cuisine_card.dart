import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class ExploreCuisineCard extends StatelessWidget {
  const ExploreCuisineCard(
      {super.key,
      required this.height,
      required this.width,
      required this.imgUrl,
      required this.cuisineName,
      required this.onPressed});
  final String imgUrl;
  final String cuisineName;
  final double height;
  final double width;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.kw),
        child: Stack(
          children: [
            CommonImageView(
              height: height,
              width: width,
              fit: BoxFit.cover,
              url: imgUrl,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50.kh,
                width: 179.kw,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.kw),
                      child: Text(
                        cuisineName,
                        style: TextStyleUtil.manrope14w500(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
