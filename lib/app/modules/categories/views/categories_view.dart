import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstant.categories,
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: EdgeInsets.all(18.kw),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: [
            _buildCategoryCard(ImageConstant.categoryCardBlue, "Category 1"),
            _buildCategoryCard(ImageConstant.categoryCardPink, "Category 2"),
            _buildCategoryCard(ImageConstant.categoryCardYellow, "Category 3"),
            _buildCategoryCard(ImageConstant.categoryCardBlue, "Category 4"),
            _buildCategoryCard(ImageConstant.categoryCardBlue, "Category 1"),
            _buildCategoryCard(ImageConstant.categoryCardPink, "Category 2"),
            _buildCategoryCard(ImageConstant.categoryCardYellow, "Category 3"),
            _buildCategoryCard(ImageConstant.categoryCardBlue, "Category 4"),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String imagePath, String text) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        children: [
          Positioned.fill(
            child: CommonImageView(
              svgPath: imagePath,
            ),
          ),
          Center(
            child: Text(text, style: TextStyleUtil.montserrat14w500()),
          ),
        ],
      ),
    );
  }
}
