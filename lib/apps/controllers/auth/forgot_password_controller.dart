import 'package:braindbox/apps/utils/responsive.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  late ResponsiveUtils responsiveUtils;
  var selectedOption = Rxn<String>();

  @override
  void onInit() {
    super.onInit();
    responsiveUtils = Get.find<ResponsiveUtils>();
  }

  double get headingFontSize => responsiveUtils.getWidthPercentage(0.045);
  double get bodyFontSize => responsiveUtils.getWidthPercentage(0.034);
  double get labelFontSize => responsiveUtils.getWidthPercentage(0.045);

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void navigateToResetPassword() {
    if (selectedOption.value == "email") {
      Get.toNamed('/reset-password-email');
    } else if (selectedOption.value == "phone") {
      Get.toNamed('/reset-password-phone');
    } else {
      Get.snackbar('No Option Selected', 'Please select an option to proceed');
    }
  }
}
