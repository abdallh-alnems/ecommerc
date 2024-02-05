import 'package:ecommerc/view/screen/homescreen.dart';
import 'package:get/get.dart';
import '../../../view/screen/address/add.dart';
import '../../../view/screen/address/adddetails.dart';
import '../../../view/screen/address/view.dart';
import '../../../view/screen/auth/forget_password/forget_password.dart';
import '../../../view/screen/auth/forget_password/reset_password.dart';
import '../../../view/screen/auth/forget_password/success_resetpassword.dart';
import '../../../view/screen/auth/forget_password/verifycode.dart';
import '../../../view/screen/auth/login.dart';
import '../../../view/screen/auth/siginup.dart';
import '../../../view/screen/auth/success_signup.dart';
import '../../../view/screen/auth/verify_code_signup.dart';
import '../../../view/screen/cart.dart';
import '../../../view/screen/checkout.dart';
import '../../../view/screen/items.dart';
import '../../../view/screen/language.dart';
import '../../../view/screen/myfavorite.dart';
import '../../../view/screen/offers.dart';
import '../../../view/screen/onboarding.dart';
import '../../../view/screen/orders/archive.dart';
import '../../../view/screen/orders/details.dart';
import '../../../view/screen/orders/pending.dart';
import '../../../view/screen/productdetails.dart';
import '../../middleware/mymiddleware.dart';
import 'route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(),
        middlewares: [MyMiddleWare()]
       ),
  // GetPage(name: "/", page: () => Cart()),
   GetPage(name: AppRoute.cart, page: () => const Cart()),
//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  //
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
   GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()),
  // //
   GetPage(name: AppRoute.addressview, page: () => const AddressView()),
   GetPage(name: AppRoute.addressadd, page: () => const AddressAdd()),
   GetPage(name: AppRoute.checkout, page: () => const Checkout()),
   GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
   GetPage(name: AppRoute.ordersarchive, page: () => const OrdersArchiveView()),
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
   GetPage(
       name: AppRoute.addressadddetails, page: () => const AddressAddDetails()),
       
 GetPage(
       name: AppRoute.offersView, page: () => const OffersView()),
       

       
];
