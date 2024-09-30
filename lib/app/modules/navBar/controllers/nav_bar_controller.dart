import 'package:cuponi/app/modules/favorites/views/favorites_view.dart';
import 'package:cuponi/app/modules/home/views/home_view.dart';
import 'package:cuponi/app/modules/myCoupons/views/my_coupons_view.dart';
import 'package:cuponi/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

enum BottomTab {
  home,
  coupons,
  challenges,
  favorites,
  profile,
}

class NavBarController extends GetxController {
  //TODO: Implement NavBarController

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  var selectedTab = BottomTab.home.obs;
  var pages = {
    BottomTab.home: const HomeView(),
    BottomTab.favorites: const FavoritesView(),
    BottomTab.coupons: const MyCouponsView(),
    // BottomTab.vip: const GetVipCard1(),
    BottomTab.profile: const ProfileView(),
  };

  void changeTab(BottomTab tab) {
    selectedTab.value = tab;
  }
}
