import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

class PriceBar extends StatelessWidget {
  const PriceBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152.kh,
      margin: EdgeInsets.only(bottom: 16.kh),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.kw),
          color: Colors.white,
          border: Border(bottom: BorderSide(color: context.borderColor1))),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12.kw, right: 12.kw, top: 12.kw),
                child: Text(
                  StringConstant.price,
                  style: TextStyleUtil.manrope16w600(),
                ),
              ),
            ],
          ),
          2.kheightBox,
          RangeSliderFlutter(
            values: const [0, 8],
            rangeSlider: true,
            tooltip: RangeSliderFlutterTooltip(
                alwaysShowTooltip: true, disabled: true),
            max: 20,
            textPositionTop: -100,
            handlerHeight: 30,
            trackBar: RangeSliderFlutterTrackBar(
              activeTrackBarHeight: 10,
              inactiveTrackBarHeight: 10,
              activeTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.pBlue,
              ),
              inactiveTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            min: 0,
            fontSize: 15,
            textBackgroundColor: context.pBlue,
            onDragging: (handlerIndex, lowerValue, upperValue) {},
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.kw, right: 14.kw, bottom: 12.kw),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.kh,
                  width: 99.kw,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.borderColor1,
                    ),
                    borderRadius: BorderRadius.circular(8.kw),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 60.kw,
                          child: Center(
                              child: Text(
                            "0",
                            style: TextStyleUtil.manrope18w400(),
                          ))),
                      const Spacer(),
                      Container(
                        width: 1,
                        height: 40.kh,
                        color: context.borderColor1,
                      ),
                      SizedBox(
                          width: 36.kw,
                          child: Center(
                              child: Text(
                            StringConstant.pound,
                            style: TextStyleUtil.manrope18w400(),
                          )))
                    ],
                  ),
                ),
                Container(
                  height: 40.kh,
                  width: 99.kw,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.borderColor1,
                    ),
                    borderRadius: BorderRadius.circular(8.kw),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 60.kw,
                          child: Center(
                              child: Text(
                            "20",
                            style: TextStyleUtil.manrope18w400(),
                          ))),
                      const Spacer(),
                      Container(
                        width: 1,
                        height: 40.kh,
                        color: context.borderColor1,
                      ),
                      SizedBox(
                          width: 36.kw,
                          child: Center(
                              child: Text(
                            StringConstant.pound,
                            style: TextStyleUtil.manrope18w400(),
                          )))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
