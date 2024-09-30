import 'package:cuponi/app/components/custom_app_bar.dart';
import 'package:cuponi/app/components/notification_card.dart';
import 'package:cuponi/app/constants/string_constant.dart';
import 'package:cuponi/app/services/responsive_size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: StringConstant.notifications,
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          margin: EdgeInsets.only(left: 16.kw, right: 16.kw),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) => const NotificationCard(
                    subTitle:
                        "New offer available! Get 30% off your next meal at Pizza Paradise.",
                    timeAgo: "1h AGo",
                    title: "Summer special offer",
                  )),
        ));
  }
}
