import 'package:braindbox/apps/ui/pages/splash_page2.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToHomePage();
  }

  void _navigateToHomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => const SplashPage2());
  }
}
