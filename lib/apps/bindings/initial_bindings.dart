import 'package:braindbox/apps/controllers/login_controller.dart';
import 'package:braindbox/apps/controllers/onboarding_controller.dart';
import 'package:braindbox/apps/controllers/register_controller.dart';
import 'package:braindbox/apps/controllers/splash_controller.dart';
import 'package:braindbox/apps/controllers/splash_controller2.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<SplashController2>(() => SplashController2());
    Get.lazyPut<OnboardingController>(() => OnboardingController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<RegisterController>(() => RegisterController());
    // Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
