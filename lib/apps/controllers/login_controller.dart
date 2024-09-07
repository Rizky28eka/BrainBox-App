import 'package:braindbox/apps/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late ResponsiveUtils responsiveUtils;

  // Variabel untuk menampung input email dan password
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Objek Rx untuk memantau status loading dan validasi input
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

  // Fungsi untuk validasi email
  bool validateEmail(String email) {
    return email.isNotEmpty && GetUtils.isEmail(email);
  }

  // Fungsi untuk validasi password
  bool validatePassword(String password) {
    return password.isNotEmpty && password.length >= 6;
  }

  // Fungsi untuk login, menampilkan loading dan validasi input
  void onLoginPressed() async {
    // Reset validasi
    isEmailValid.value = validateEmail(emailController.text);
    isPasswordValid.value = validatePassword(passwordController.text);

    // Jika validasi gagal, hentikan proses login
    if (!isEmailValid.value || !isPasswordValid.value) return;

    // Jika validasi berhasil, tampilkan loading
    isLoading.value = true;

    // Simulasi delay proses login
    await Future.delayed(const Duration(seconds: 2));

    // Selesai loading
    isLoading.value = false;

    // Proses login atau cek login logic di sini
    // contoh simple:
    if (emailController.text == "user@example.com" &&
        passwordController.text == "password123") {
      Get.snackbar('Login Successful', 'Welcome to the app!',
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar('Login Failed', 'Incorrect email or password',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  // Fungsi untuk tombol login via Google
  void onGooglePressed() {
    Get.snackbar('Google Login', 'Google login pressed',
        snackPosition: SnackPosition.BOTTOM);
  }

  // Fungsi untuk tombol login via Facebook
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
}
