import 'package:braindbox/apps/bindings/initial_bindings.dart';
import 'package:braindbox/apps/routes/app_routes.dart';
import 'package:braindbox/apps/ui/pages/auth/forgot_password_page.dart';
import 'package:braindbox/apps/ui/pages/auth/login_page.dart';
import 'package:braindbox/apps/ui/pages/auth/register_page.dart';
import 'package:braindbox/apps/ui/pages/core/onboarding_page.dart';
import 'package:braindbox/apps/ui/pages/core/splash_page.dart';
import 'package:braindbox/apps/ui/pages/core/splash_page2.dart';
import 'package:braindbox/apps/ui/pages/core/welcome_page.dart';
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
      page: () => ForgotPasswordPage(),
      binding: InitialBinding(),
    )
  ];
}
