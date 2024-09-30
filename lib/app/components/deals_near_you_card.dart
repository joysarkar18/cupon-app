import 'package:cuponi/app/components/added_successfull_bottomsheet.dart';
import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/gradients_util.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DealsNearYouCard extends StatelessWidget {
  const DealsNearYouCard(
      {super.key,
      required this.brand,
      required this.imgUrl,
      required this.location});
  final String imgUrl;
  final String brand;
  final String location;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.kw),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 160.kh,
              width: 100.w,
              child: Stack(
                children: [
                  CommonImageView(
                    height: 160.kh,
                    width: 100.w,
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
                          color: context.primary01,
                        ),
                      ),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Padding(
                  //     padding: EdgeInsets.all(10.kw),
                  //     child: CommonImageView(
                  //       svgPath: ImageConstant.vipIcon,
                  //       height: 28,
                  //     ),
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 80.kh,
                      width: 100.w,
                      decoration:
                          BoxDecoration(gradient: GradientUtil.shadowGradient),
                      child: Padding(
                        padding: EdgeInsets.all(10.kw),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            6.kheightBox,
            Padding(
              padding: EdgeInsets.only(left: 6.kw),
              child: Text(
                brand,
                style: TextStyleUtil.manrope16w600(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.kw, bottom: 8.kw),
              child: Text(
                location,
                style: TextStyleUtil.manrope12w400(color: context.black02),
              ),
            ),
            1.kheightBox,
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.kw, bottom: 8.kw),
                  child: Row(
                    children: [
                      Text(
                        StringConstant.price + " : ",
                        style: TextStyleUtil.montserrat16w500(
                            color: context.pBlue),
                      ),
                      Text(
                        "\$15",
                        style: TextStyleUtil.montserrat18w700(
                            color: context.pBlue),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Get.bottomSheet(AddedSuccessfullBottomSheet(
                        subTitle: StringConstant.cuponAdded));
                  },
                  child: Container(
                    height: 33.kh,
                    width: 120.kw,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: context.yellow01,
                        borderRadius: BorderRadius.circular(80.kw)),
                    child: Center(
                        child: Text(
                      StringConstant.addToCart,
                      style: TextStyleUtil.manrope14w500(color: context.pBlue),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
