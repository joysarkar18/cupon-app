import 'package:cuponi/app/components/common_image_view.dart';
import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/custom_button.dart';
import 'package:cuponi/app/components/custom_button_with_border.dart';
import 'package:cuponi/app/constants/image_constant.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/colors.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:cuponi/app/services/text_style_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: StringConstant.editProfile,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.kw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.kheightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100.kh,
                      width: 100.kw,
                      child: Stack(
                        children: [
                          Container(
                            height: 100.kh,
                            width: 100.kw,
                            decoration: BoxDecoration(
                                color: context.black05, shape: BoxShape.circle),
                            child: Center(
                                child: CommonImageView(
                              svgPath: ImageConstant.userLogo,
                            )),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 25.kh,
                              width: 25.kw,
                              margin:
                                  EdgeInsets.only(right: 4.kw, bottom: 2.kh),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffFAFAFA), width: 4),
                                  shape: BoxShape.circle,
                                  color: context.pBlue),
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    // controller.pickUserImage();
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 16,
                                    color: context.primary07,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                16.kheightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringConstant.takeOrUploadPhoto,
                      style:
                          TextStyleUtil.manrope16w400(color: context.black03),
                    ),
                  ],
                ),
                30.kheightBox,
                Text(
                  StringConstant.fullName,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: context.loginSignupTextfieldColor,
                      borderRadius: BorderRadius.circular(8.0.kw),
                      border: Border.all(color: context.black07)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.nameController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterNameHere,
                              hintStyle: TextStyleUtil.manrope14w400(
                                  color: context.black04),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.emailId,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: context.loginSignupTextfieldColor,
                      borderRadius: BorderRadius.circular(8.0.kw),
                      border: Border.all(color: context.black07)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.emailController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterEmailId,
                              hintStyle: TextStyleUtil.manrope14w400(
                                  color: context.black04),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.phoneNumber,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: context.loginSignupTextfieldColor,
                      borderRadius: BorderRadius.circular(8.0.kw),
                      border: Border.all(color: context.black07)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.phoneNumberController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterPhoneNumber,
                              hintStyle: TextStyleUtil.manrope14w400(
                                  color: context.black04),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.gender,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: context.loginSignupTextfieldColor,
                      borderRadius: BorderRadius.circular(8.0.kw),
                      border: Border.all(color: context.black07)),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: DropdownButtonFormField<String>(
                        value: "Male",
                        style: TextStyleUtil.manrope16w400(),
                        onChanged: (val) {
                          if (val != null) {
                            // controller.gender.value = val.toLowerCase();
                          }
                        },
                        items: ["Male", "Female", "Other"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(0),
                          hintText: StringConstant.selectGender,
                          hintStyle: TextStyleUtil.manrope14w400(
                              color: context.black04),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.age,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: context.loginSignupTextfieldColor,
                      borderRadius: BorderRadius.circular(8.0.kw),
                      border: Border.all(color: context.black07)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.ageController,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.calendar_month_rounded),
                                onPressed: () {},
                              ),
                              hintText: StringConstant.selectAge,
                              hintStyle: TextStyleUtil.manrope14w400(
                                  color: context.black04),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                20.kheightBox,
                Row(
                  children: [
                    Text(
                      StringConstant.location,
                      style: TextStyleUtil.montserrat16w500(
                          color: context.black02),
                    ),
                    10.kwidthBox,
                    Expanded(
                        child: Divider(
                      color: context.black05,
                    ))
                  ],
                ),
                20.kheightBox,
                Text(
                  StringConstant.houseNo,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: context.loginSignupTextfieldColor,
                    borderRadius: BorderRadius.circular(30.kw),
                    border: Border.all(color: context.black07),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.addressController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterAddress,
                              hintStyle: TextStyleUtil.manrope14w400(
                                color: context.black04,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.street,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: context.loginSignupTextfieldColor,
                    borderRadius: BorderRadius.circular(30.kw),
                    border: Border.all(color: context.black07),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.cityController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterCity,
                              hintStyle: TextStyleUtil.manrope14w400(
                                color: context.black04,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.postalCode,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: context.loginSignupTextfieldColor,
                    borderRadius: BorderRadius.circular(30.kw),
                    border: Border.all(color: context.black07),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.addressController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterAddress,
                              hintStyle: TextStyleUtil.manrope14w400(
                                color: context.black04,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.city,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: context.loginSignupTextfieldColor,
                    borderRadius: BorderRadius.circular(30.kw),
                    border: Border.all(color: context.black07),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.cityController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterCity,
                              hintStyle: TextStyleUtil.manrope14w400(
                                color: context.black04,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.state,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: context.loginSignupTextfieldColor,
                    borderRadius: BorderRadius.circular(30.kw),
                    border: Border.all(color: context.black07),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.cityController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterCity,
                              hintStyle: TextStyleUtil.manrope14w400(
                                color: context.black04,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                16.kheightBox,
                Text(
                  StringConstant.country,
                  style: TextStyleUtil.manrope14w500(color: context.pBlue),
                ),
                10.kheightBox,
                Container(
                  height: 53.kh,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: context.loginSignupTextfieldColor,
                    borderRadius: BorderRadius.circular(30.kw),
                    border: Border.all(color: context.black07),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.kh),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: controller.cityController,
                            decoration: InputDecoration(
                              hintText: StringConstant.enterCity,
                              hintStyle: TextStyleUtil.manrope14w400(
                                color: context.black04,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                30.kheightBox,
                CustomYellowElevatedButton(
                    buttonText: StringConstant.save,
                    height: 56.kh,
                    width: 100.w,
                    textStyle:
                        TextStyleUtil.montserrat16w600(color: context.pBlue),
                    onPressed: () {}),
                16.kheightBox,
                CustomElevatedButtonWithBorder(
                    buttonText: StringConstant.deleteAccount,
                    width: 100.w,
                    height: 56.kh,
                    onPressed: Get.back),
                40.kheightBox,
              ],
            ),
          ),
        ));
  }
}
