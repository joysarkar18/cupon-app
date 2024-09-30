import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResturantNearYouCard extends StatelessWidget {
  const ResturantNearYouCard({
    super.key,
    required this.brand,
    required this.imgUrl,
    required this.location,
  });
  final String imgUrl;
  final String brand;
  final String location;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.VENDOR_DETAILS);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.kw),
            child: SizedBox(
              height: 44.w,
              width: 44.w,
              child: Stack(
                children: [
                  CommonImageView(
                    height: 44.w,
                    width: 44.w,
                    fit: BoxFit.cover,
                    url: imgUrl,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 24.kh,
                      width: 24.kw,
                      margin: EdgeInsets.all(10.kw),
                      decoration: BoxDecoration(
                          color: context.primary07,
                          borderRadius: BorderRadius.circular(12.kw)),
                      child: Center(
                        child: Icon(
                          Icons.favorite_outline,
                          size: 16.kw,
                          color: context.pBlue,
                        ),
                      ),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Padding(
                  //     padding: EdgeInsets.all(10.kw),
                  //     child: CommonImageView(
                  //       svgPath: ImageConstant.appleLogo,
                  //       height: 28,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          6.kheightBox,
          Padding(
            padding: EdgeInsets.only(left: 6.kw),
            child: Text(
              brand,
              style: TextStyleUtil.montserrat16w700(color: context.pBlue),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.kw),
            child: Text(
              location,
              style: TextStyleUtil.manrope12w400(color: context.black02),
            ),
          ),
          10.kheightBox,
        ],
      ),
    );
  }
}
