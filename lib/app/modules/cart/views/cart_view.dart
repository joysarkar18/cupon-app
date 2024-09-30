import 'package:cuponi/app/components/cart_card.dart';
import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/modules/cart/views/payment_successful_screen.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: StringConstant.cart),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              CartCard(
                dateShow: false,
              ),
              10.kheightBox,
              CartCard(
                dateShow: true,
              ),
              10.kheightBox,
              CartCard(
                dateShow: false,
              ),
              10.kheightBox,
              Container(
                height: 75.kh,
                width: 100.w,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstant.paymentMethod,
                          style: TextStyleUtil.montserrat16w600(),
                        ),
                        5.kheightBox,
                        Text(
                          StringConstant.razorpay,
                          style: TextStyleUtil.montserrat14w500(
                            color: context.black04,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          StringConstant.change,
                          style: TextStyleUtil.montserrat14w700(
                              color: context.pBlue,
                              textDecoration: TextDecoration.underline),
                        ))
                  ],
                ),
              ),
              10.kheightBox,
              Container(
                height: 100.kh,
                width: 100.w,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConstant.rewardsPoints,
                          style: TextStyleUtil.montserrat16w600(),
                        ),
                        Spacer(),
                        Transform.scale(
                          scale: 0.6,
                          child: Switch(
                            activeColor: context.pBlue,
                            inactiveThumbColor: context.primary04,
                            value: true,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Use 20 points from your reward points",
                      style: TextStyleUtil.montserrat14w500(
                        color: context.black04,
                      ),
                    )
                  ],
                ),
              ),
              10.kwidthBox,
              Container(
                width: 100.w,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstant.billingDetails,
                      style: TextStyleUtil.montserrat16w600(),
                    ),
                    10.kheightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StringConstant.totalItems,
                          style: TextStyleUtil.montserrat14w500(
                              color: context.black04),
                        ),
                        Text(
                          "3",
                          style: TextStyleUtil.montserrat14w500(),
                        )
                      ],
                    ),
                    10.kheightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StringConstant.totalAmount,
                          style: TextStyleUtil.montserrat14w500(
                              color: context.black04),
                        ),
                        Text(
                          "\$45",
                          style: TextStyleUtil.montserrat14w500(),
                        )
                      ],
                    ),
                    10.kheightBox,
                    Divider(
                      color: context.black05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StringConstant.totalpayable,
                          style: TextStyleUtil.montserrat16w500(
                              color: context.black04),
                        ),
                        Text(
                          "\$45",
                          style: TextStyleUtil.montserrat16w600(
                              color: context.pBlue),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              20.kheightBox,
              CustomYellowElevatedButton(
                buttonText: StringConstant.pay,
                height: 56.kh,
                width: 100.w,
                onPressed: () {
                  Get.to(PaymentSuccessfunScreen());
                },
                textStyle: TextStyleUtil.montserrat16w600(color: context.pBlue),
              )
            ],
          ),
        ));
  }
}
