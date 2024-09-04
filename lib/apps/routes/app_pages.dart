import 'package:braindbox/apps/bindings/initial_bindings.dart';
import 'package:braindbox/apps/routes/app_routes.dart';
import 'package:braindbox/apps/ui/pages/login_page.dart';
import 'package:braindbox/apps/ui/pages/onboarding_page.dart';
import 'package:braindbox/apps/ui/pages/splash_page.dart';
import 'package:braindbox/apps/ui/pages/splash_page2.dart';
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
      page: () => OnboardingPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => LoginPage(),
      binding: InitialBinding(),
    )
  ];
}
