import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/custom_textfield.dart';
import 'package:cuponi/app/components/recent_search.dart';
import 'package:cuponi/app/components/search_result_card.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/routes/app_pages.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_screen_controller.dart';

class SearchScreenView extends GetView<SearchScreenController> {
  const SearchScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: StringConstant.search,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.kw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                    controller: controller.searchController,
                    prefixIcon: Icons.search_rounded,
                    suffixIcon: Icons.filter_list,
                    fillColor: Colors.white,
                    // suffixOnPressed:
                    //     Get.find<SearchPageController>().gotoFilterPage,
                    suffixOnPressed: () {
                      Get.toNamed(Routes.FILTERS);
                    },
                    hintText: StringConstant.homeSearch),
                20.kheightBox,
                if (controller.searchController.text.isEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConstant.recentSeraches,
                        style: TextStyleUtil.manrope18w500(),
                      ),
                      10.kheightBox,
                      const RecentSearch(
                        imgUrl:
                            "https://holycowvegan.net/wp-content/uploads/2023/03/paratha-recipe-12.jpg",
                        title: "Domino's",
                      ),
                      const RecentSearch(
                        imgUrl:
                            "https://holycowvegan.net/wp-content/uploads/2023/03/paratha-recipe-12.jpg",
                        title: "Domino's",
                      ),
                      const RecentSearch(
                        imgUrl:
                            "https://holycowvegan.net/wp-content/uploads/2023/03/paratha-recipe-12.jpg",
                        title: "Domino's",
                      ),
                      const RecentSearch(
                        imgUrl:
                            "https://holycowvegan.net/wp-content/uploads/2023/03/paratha-recipe-12.jpg",
                        title: "Domino's",
                      ),
                    ],
                  ),
                // ...[1, 2, 3, 4].map(
                //   (e) => Padding(
                //     padding: EdgeInsets.only(bottom: 10.kh),
                //     child: InkWell(
                //       // onTap: controller.gotoRestaurantDetailsScreen,
                //       child: const SearchResultCard(
                //           imgUrl:
                //               "https://holycowvegan.net/wp-content/uploads/2023/03/paratha-recipe-12.jpg",
                //           title: "Domino's Pizza"),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
