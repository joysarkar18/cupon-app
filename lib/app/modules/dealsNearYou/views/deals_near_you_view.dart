import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/deals_near_you_card.dart';
import 'package:cuponi/app/components/homePage/resturants_near_you_card.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/deals_near_you_controller.dart';

class DealsNearYouView extends GetView<DealsNearYouController> {
  const DealsNearYouView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: StringConstant.dealsnearyou,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                ...[1, 2, 3, 4, 5, 6].map(
                  (e) => InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: DealsNearYouCard(
                        brand: "Domino's",
                        imgUrl:
                            "https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2.jpg",
                        location: "Park street 1234 buildig",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
