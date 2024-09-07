import 'package:braindbox/apps/ui/pages/auth/forgot_password_page.dart';
import 'package:braindbox/apps/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late ResponsiveUtils responsiveUtils;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false.obs;
  var isEmailValid = true.obs;
  var isPasswordValid = true.obs;

  @override
  void onInit() {
    super.onInit();
    responsiveUtils = ResponsiveUtils.to;
  }

  double get headingFontSize => responsiveUtils.getWidthPercentage(0.07);
  double get bodyFontSize => responsiveUtils.getWidthPercentage(0.034);
  double get labelFontSize => responsiveUtils.getWidthPercentage(0.034);

  bool validateEmail(String email) {
    return email.isNotEmpty && GetUtils.isEmail(email);
  }

  bool validatePassword(String password) {
    return password.isNotEmpty && password.length >= 6;
  }

  void onLoginPressed() async {
    isEmailValid.value = validateEmail(emailController.text);
    isPasswordValid.value = validatePassword(passwordController.text);

    if (!isEmailValid.value || !isPasswordValid.value) return;

    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    isLoading.value = false;

    if (emailController.text == "user@example.com" &&
        passwordController.text == "password123") {
      Get.snackbar('Login Successful', 'Welcome to the app!',
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar('Login Failed', 'Incorrect email or password',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void onGooglePressed() {
    Get.snackbar('Google Login', 'Google login pressed',
        snackPosition: SnackPosition.BOTTOM);
  }

  void onFacebookPressed() {
    Get.snackbar('Facebook Login', 'Facebook login pressed',
        snackPosition: SnackPosition.BOTTOM);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void onForgotPasswordPressed() {
    Get.to(() => ForgotPasswordPage());
  }
}
