import 'package:braindbox/apps/utils/responsive.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late ResponsiveUtils responsiveUtils;

  @override
  void onInit() {
    super.onInit();
    responsiveUtils = ResponsiveUtils.to;
  }

  double get headingFontSize => responsiveUtils.getWidthPercentage(0.07);
  double get bodyFontSize => responsiveUtils.getWidthPercentage(0.034);
  double get labelFontSize => responsiveUtils.getWidthPercentage(0.034);
  double get smallFontSize => responsiveUtils.getWidthPercentage(0.04);
}
