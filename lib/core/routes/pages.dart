part of 'routes.dart';

class AppRoute {
  static Route? generate(RouteSettings? settings) {
    switch (settings?.name) {
      //! ********* Onboarding ************ 
      case RoutesName.initial:
        return PageTransition(
          child: const OnboardingView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Auth ************
      case RoutesName.authIntro:
        return PageTransition(
          child: const IntroAuthView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.register:
        return PageTransition(
          child: const RegisterView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.numberVerification:
        return PageTransition(
          child: const NumberVerificationView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.loginOrRegister:
        return PageTransition(
          child: const LoginOrRegisterView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.login:
        return PageTransition(
          child: const LoginView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.forgotPassword:
        return PageTransition(
          child: const ForgetPasswordView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.passwordReset:
        return PageTransition(
          child: const PasswordResetView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* EntryPoint ************
      case RoutesName.entryPoint:
        return PageTransition(
          child: const EntryPointView(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Drawer ************
      case RoutesName.drawerPage:
        return PageTransition(
          child: const DrawerPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Search ************
      case RoutesName.search:
        return PageTransition(
          child: const SearchPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.searchResult:
        return PageTransition(
          child: const SearchResultPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Popular Packs ************
      case RoutesName.popularItems:
        return PageTransition(
          child: const PopularPackPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.bundleProduct:
        return PageTransition(
          child: const BundleProductDetailsPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.createMyPack:
        return PageTransition(
          child: const BundleCreatePage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Our New Item ************
      case RoutesName.newItems:
        return PageTransition(
          child: const NewItemsPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.productDetails:
        return PageTransition(
          child: const ProductDetailsPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Category ************
      case RoutesName.categoryDetails:
        return PageTransition(
          child: const CategoryProductPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Cart ************
      case RoutesName.checkoutPage:
        return PageTransition(
          child: const CheckoutPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.orderSuccessfull:
        return PageTransition(
          child: const OrderSuccessfullPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.orderFailed:
        return PageTransition(
          child: const OrderFailedPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Review ************
      case RoutesName.submitReview:
        return PageTransition(
          child: const SubmitReviewPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.review:
        return PageTransition(
          child: const ReviewPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Order ************
      case RoutesName.myOrder:
        return PageTransition(
          child: const AllOrderPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.orderDetails:
        return PageTransition(
          child: const OrderDetailsPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Copon ************
      case RoutesName.coupon:
        return PageTransition(
          child: const CouponAndOffersPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.couponDetails:
        return PageTransition(
          child: const CouponDetailsPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Address ************
      case RoutesName.deliveryAddress:
        return PageTransition(
          child: const AddressPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.newAddress:
        return PageTransition(
          child: const NewAddressPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Payment ************
      case RoutesName.paymentMethod:
        return PageTransition(
          child: const PaymentMethodPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.paymentCardAdd:
        return PageTransition(
          child: const AddNewCardPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Notification ************
      case RoutesName.notifications:
        return PageTransition(
          child: const NotificationPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.settingsNotifications:
        return PageTransition(
          child: const NotificationSettingsPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Profile ************
      case RoutesName.profileEdit:
        return PageTransition(
          child: const ProfileEditPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      //! ********* Settings ************
      case RoutesName.settings:
        return PageTransition(
          child: const SettingsPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.settingsLanguage:
        return PageTransition(
          child: const LanguageSettingsPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.changePassword:
        return PageTransition(
          child: const ChangePasswordPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      case RoutesName.changePhoneNumber:
        return PageTransition(
          child: const ChangePhoneNumberPage(), 
          type: PageTransitionType.fade,
          duration: CoreDefaults.duration);
      
      //!  For Testing
      // case RoutesName.test:
      //   return PageTransition(
      //     child: const TestScreen(), 
      //     type: PageTransitionType.fade,
      //     duration: const Duration(milliseconds: 500));

      default:
        // throw RouteException();
        throw Exception();
    }
  }
}
