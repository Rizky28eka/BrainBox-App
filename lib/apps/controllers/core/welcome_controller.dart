import 'package:braindbox/apps/ui/pages/auth/login_page.dart';
import 'package:braindbox/apps/ui/pages/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  void onLoginPressed() {
    Get.to(() => const LoginPage());
  }

  void onSignUpPressed() {
    Get.to(() => const RegisterPage());
  }

  void onGooglePressed() {
    debugPrint("Google button pressed");
  }

  void onFacebookPressed() {
    debugPrint("Facebook button pressed");
  }
}
