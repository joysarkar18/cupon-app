import 'package:get/get.dart';

import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/categories/bindings/categories_binding.dart';
import '../modules/categories/views/categories_view.dart';
import '../modules/changePassword/bindings/change_password_binding.dart';
import '../modules/changePassword/views/change_password_view.dart';
import '../modules/dealsNearYou/bindings/deals_near_you_binding.dart';
import '../modules/dealsNearYou/views/deals_near_you_view.dart';
import '../modules/editProfile/bindings/edit_profile_binding.dart';
import '../modules/editProfile/views/edit_profile_view.dart';
import '../modules/enableLocation/bindings/enable_location_binding.dart';
import '../modules/enableLocation/views/enable_location_view.dart';
import '../modules/exclusiveOffer/bindings/exclusive_offer_binding.dart';
import '../modules/exclusiveOffer/views/exclusive_offer_view.dart';
import '../modules/favorites/bindings/favorites_binding.dart';
import '../modules/favorites/views/favorites_view.dart';
import '../modules/featuredOffers/bindings/featured_offers_binding.dart';
import '../modules/featuredOffers/views/featured_offers_view.dart';
import '../modules/filters/bindings/filters_binding.dart';
import '../modules/filters/views/filters_view.dart';
import '../modules/helpAndSupport/bindings/help_and_support_binding.dart';
import '../modules/helpAndSupport/views/help_and_support_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/myCoupons/bindings/my_coupons_binding.dart';
import '../modules/myCoupons/views/my_coupons_view.dart';
import '../modules/navBar/bindings/nav_bar_binding.dart';
import '../modules/navBar/views/nav_bar_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/profileSetup/bindings/profile_setup_binding.dart';
import '../modules/profileSetup/views/profile_setup_view.dart';
import '../modules/purchaseHistory/bindings/purchase_history_binding.dart';
import '../modules/purchaseHistory/views/purchase_history_view.dart';
import '../modules/ratingAndReview/bindings/rating_and_review_binding.dart';
import '../modules/ratingAndReview/views/rating_and_review_view.dart';
import '../modules/rewardPoints/bindings/reward_points_binding.dart';
import '../modules/rewardPoints/views/reward_points_view.dart';
import '../modules/scanQRCode/bindings/scan_q_r_code_binding.dart';
import '../modules/scanQRCode/views/scan_q_r_code_view.dart';
import '../modules/searchScreen/bindings/search_screen_binding.dart';
import '../modules/searchScreen/views/search_screen_view.dart';
import '../modules/setPreference/bindings/set_preference_binding.dart';
import '../modules/setPreference/views/set_preference_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/termsAndConditions/bindings/terms_and_conditions_binding.dart';
import '../modules/termsAndConditions/views/terms_and_conditions_view.dart';
import '../modules/vendorDetails/bindings/vendor_details_binding.dart';
import '../modules/vendorDetails/views/vendor_details_view.dart';
import '../modules/verify/bindings/verify_binding.dart';
import '../modules/verify/views/verify_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAV_BAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY,
      page: () => const VerifyView(),
      binding: VerifyBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETUP,
      page: () => const ProfileSetupView(),
      binding: ProfileSetupBinding(),
    ),
    GetPage(
      name: _Paths.ENABLE_LOCATION,
      page: () => const EnableLocationView(),
      binding: EnableLocationBinding(),
    ),
    GetPage(
      name: _Paths.NAV_BAR,
      page: () => const NavBarView(),
      binding: NavBarBinding(),
    ),
    GetPage(
      name: _Paths.SET_PREFERENCE,
      page: () => const SetPreferenceView(),
      binding: SetPreferenceBinding(),
    ),
    GetPage(
      name: _Paths.FEATURED_OFFERS,
      page: () => const FeaturedOffersView(),
      binding: FeaturedOffersBinding(),
    ),
    GetPage(
      name: _Paths.EXCLUSIVE_OFFER,
      page: () => const ExclusiveOfferView(),
      binding: ExclusiveOfferBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORIES,
      page: () => const CategoriesView(),
      binding: CategoriesBinding(),
    ),
    GetPage(
      name: _Paths.DEALS_NEAR_YOU,
      page: () => const DealsNearYouView(),
      binding: DealsNearYouBinding(),
    ),
    GetPage(
      name: _Paths.FILTERS,
      page: () => const FiltersView(),
      binding: FiltersBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_SCREEN,
      page: () => const SearchScreenView(),
      binding: SearchScreenBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_DETAILS,
      page: () => const VendorDetailsView(),
      binding: VendorDetailsBinding(),
    ),
    GetPage(
      name: _Paths.RATING_AND_REVIEW,
      page: () => const RatingAndReviewView(),
      binding: RatingAndReviewBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_AND_CONDITIONS,
      page: () => const TermsAndConditionsView(),
      binding: TermsAndConditionsBinding(),
    ),
    GetPage(
      name: _Paths.HELP_AND_SUPPORT,
      page: () => const HelpAndSupportView(),
      binding: HelpAndSupportBinding(),
    ),
    GetPage(
      name: _Paths.PURCHASE_HISTORY,
      page: () => const PurchaseHistoryView(),
      binding: PurchaseHistoryBinding(),
    ),
    GetPage(
      name: _Paths.REWARD_POINTS,
      page: () => const RewardPointsView(),
      binding: RewardPointsBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITES,
      page: () => const FavoritesView(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: _Paths.MY_COUPONS,
      page: () => const MyCouponsView(),
      binding: MyCouponsBinding(),
    ),
    GetPage(
      name: _Paths.SCAN_Q_R_CODE,
      page: () => const ScanQRCodeView(),
      binding: ScanQRCodeBinding(),
    ),
  ];
}
