import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/components/custom_textfield.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

class LocationBottomSheet extends StatelessWidget {
  const LocationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 590.kh,
      width: 100.w,
      padding: EdgeInsets.all(16.kw),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.kw),
              topRight: Radius.circular(24.kw))),
      child: Column(
        children: [
          Container(
            height: 5.kh,
            width: 64.kw,
            decoration: BoxDecoration(
                color: context.black01, borderRadius: BorderRadius.circular(3)),
          ),
          20.kheightBox,
          Text(
            StringConstant.selectLocation,
            style: TextStyleUtil.manrope18w600(color: context.black01),
          ),
          20.kheightBox,
          CustomTextField(
              fillColor: context.black07,
              prefixIcon: Icons.search_rounded,
              hintText: StringConstant.locationHintText),
          20.kheightBox,
          Row(
            children: [
              Expanded(
                  child: Divider(
                color: context.black07,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  StringConstant.or,
                  style: TextStyleUtil.manrope12w500(color: context.black03),
                ),
              ),
              Expanded(
                  child: Divider(
                color: context.black07,
              ))
            ],
          ),
          20.kheightBox,
          CustomYellowElevatedButton(
            width: 100.w,
            height: 56.kh,
            leadingIcon: Icon(
              Icons.my_location_outlined,
              color: context.pBlue,
            ),
            buttonText: StringConstant.useMyCurrentLocation,
            textStyle: TextStyleUtil.montserrat16w500(
              color: context.pBlue,
            ),
            onPressed: () {},
          ),
          20.kheightBox,
          Row(
            children: [
              Text(
                StringConstant.recentLocations,
                style: TextStyleUtil.manrope18w500(
                  color: context.black01,
                ),
              ),
            ],
          ),
          14.kheightBox,
          Row(
            children: [
              Column(
                children: [1, 2, 4, 5]
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.kh),
                          child: Text(
                            "Lancaster",
                            style: TextStyleUtil.manrope16w400(
                                color: context.black01),
                          ),
                        ))
                    .toList(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
