import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/terms_and_conditions_controller.dart';

class TermsAndConditionsView extends GetView<TermsAndConditionsController> {
  const TermsAndConditionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: StringConstant.termsAndConditions,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.kw),
          child: Text(
            '''These terms and conditions outline the rules and regulations for the use of the The Food Sauciety mobile application.
        By accessing this mobile application, we assume you accept these terms and conditions. Do not continue to use The Food Sauciety if you do not agree to all of the terms and conditions stated on this page. 
        The Food Sauciety mobile application is designed to provide users with access to exclusive food coupons and discounts from participating restaurants and establishments.
        Users must be at least 18 years old to use this app or have the permission of a legal guardian.
        Users are responsible for maintaining the confidentiality of their account and password. Users agree to accept responsibility for all activities that occur under their account.
        Coupons and discounts offered through The Food Sauciety are subject to availability and may have expiration dates and usage restrictions.
        Users must present valid coupons to participating restaurants at the time of purchase to redeem discounts or special offers.
        Coupons cannot be combined with other promotions, unless otherwise specified.''',
            textAlign: TextAlign.left,
            style: TextStyleUtil.manrope14w400(),
          ),
        ));
  }
}
