import 'package:blume_shopping_app/screens/acc_setup/purchase_gender_screen.dart';
import 'package:blume_shopping_app/screens/forgot/forgot_password_screen.dart';
import 'package:blume_shopping_app/screens/home/home_screen.dart';
import 'package:blume_shopping_app/screens/login/login_screen.dart';
import 'package:blume_shopping_app/screens/sign_up/sign_up_screen.dart';
import 'package:blume_shopping_app/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class RouteClass {
  static Transition transition = Transition.circularReveal;
  static Duration transitionDuration = const Duration(milliseconds: 500);

  // strings
  static String welcome = '/';
  static String login = '/login';
  static String signUp = '/signUp';
  static String forgotPassword = '/forgot_password';
  static String selectPurchaseGender = '/gender';
  static String home = '/home';

  // function
  static String getWelcomeRoute() => welcome;
  static String getHomeRoute() => home;
  static String getLoginRoute() => login;
  static String getSignUpRoute() => signUp;
  static String getForgotPasswordRoute() => forgotPassword;
  static String getSelectPurchaseGenderRoute() => selectPurchaseGender;


  // list
  static List<GetPage> routes = [
    GetPage(name: welcome, page: () => const WelcomeScreen()),
    GetPage(
        name: login,
        page: () => LoginScreen(),
        transition: transition,
        transitionDuration: transitionDuration),
    GetPage(
        name: signUp,
        page: () => const SignUpScreen(),
        transition: transition,
        transitionDuration: transitionDuration),
    GetPage(
        name: forgotPassword,
        page: () => const ForgotPasswordScreen(),
        transition: transition,
        transitionDuration: transitionDuration),
    GetPage(
        name: selectPurchaseGender,
        page: () => const SelectPurchaseGender(),
        transition: transition,
        transitionDuration: transitionDuration),
    GetPage(
        name: home,
        page: () => const HomeScreen(),
        transition: transition,
        transitionDuration: transitionDuration)
  ];
}
