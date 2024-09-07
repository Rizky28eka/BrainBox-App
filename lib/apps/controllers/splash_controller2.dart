import 'package:braindbox/apps/ui/pages/core/onboarding_page.dart';
import 'package:get/get.dart';

class SplashController2 extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToHomePage();
  }

  void _navigateToHomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => const OnboardingPage());
  }
}
