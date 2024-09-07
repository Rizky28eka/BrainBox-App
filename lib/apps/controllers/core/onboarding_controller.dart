import 'package:braindbox/apps/ui/pages/core/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }

  void goToPrevious() {
    if (currentIndex.value > 0) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    }
  }

  void goToNext(BuildContext context) {
    if (currentIndex.value < 2) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    }
  }

  void skip(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const WelcomePage()));
  }
}
