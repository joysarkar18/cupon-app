import 'package:cuponi/app/components/added_successfull_bottomsheet.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExclusiveOfferCard extends StatelessWidget {
  const ExclusiveOfferCard({
    super.key,
    required this.brandName,
    required this.description,
    required this.price,
    required this.width,
  });

  final String brandName;
  final String price;
  final String description;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.kw),
      child: Container(
        height: 175.kh,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8.kw)),
        child: Stack(
          children: [
            Positioned(
              right: -100,
              top: -16,
              child: Container(
                height: 200.kw,
                width: 200.kw,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.loveandlemons.com/wp-content/uploads/2023/02/vegetarian-pizza-500x500.jpg")),
                    borderRadius: BorderRadius.circular(100.kw)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18.kw),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  3.kheightBox,
                  Text(
                    brandName,
                    style: TextStyleUtil.montserrat16w700(),
                  ),
                  const Spacer(),
                  Text(
                    price,
                    style: TextStyleUtil.montserrat16w600(),
                  ),
                  2.kheightBox,
                  Text(
                    description,
                    style: TextStyleUtil.montserrat16w500(color: context.pBlue),
                  ),
                  5.kheightBox,
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.bottomSheet(AddedSuccessfullBottomSheet(
                          subTitle: StringConstant.cuponAdded));
                    },
                    child: Container(
                      height: 33.kh,
                      width: 100.kw,
                      decoration: BoxDecoration(
                          color: context.yellow01,
                          borderRadius: BorderRadius.circular(80.kw)),
                      child: Center(
                          child: Text(
                        StringConstant.addToCart,
                        style:
                            TextStyleUtil.manrope14w500(color: context.pBlue),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
