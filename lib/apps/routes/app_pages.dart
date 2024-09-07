import 'package:braindbox/apps/bindings/initial_bindings.dart';
import 'package:braindbox/apps/routes/app_routes.dart';
import 'package:braindbox/apps/ui/pages/forgot_password_page.dart';
import 'package:braindbox/apps/ui/pages/login_page.dart';
import 'package:braindbox/apps/ui/pages/onboarding_page.dart';
import 'package:braindbox/apps/ui/pages/register_page.dart';
import 'package:braindbox/apps/ui/pages/splash_page.dart';
import 'package:braindbox/apps/ui/pages/splash_page2.dart';
import 'package:braindbox/apps/ui/pages/welcome_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => const SplashPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.splashPage,
      page: () => const SplashPage2(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.onboardingPage,
      page: () => const OnboardingPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => const LoginPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.welcomePage,
      page: () => const WelcomePage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.registerPage,
      page: () => const RegisterPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.forgotPasswordPage,
      page: () => const ForgotPasswordPage(),
      binding: InitialBinding(),
    )
  ];
}
