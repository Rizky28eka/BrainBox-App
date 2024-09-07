import 'package:braindbox/apps/utils/responsive.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late ResponsiveUtils responsiveUtils;

  @override
  void onInit() {
    super.onInit();
    // Get.find akan otomatis mencari instance dari ResponsiveUtils yang telah di-bind
    responsiveUtils = Get.find<ResponsiveUtils>();
  }

  // Ukuran font
  double get headingFontSize => responsiveUtils.getWidthPercentage(0.07);
  double get bodyFontSize => responsiveUtils.getWidthPercentage(0.034);
  double get labelFontSize => responsiveUtils.getWidthPercentage(0.034);
  double get smallFontSize => responsiveUtils.getWidthPercentage(0.03);

  // Fungsi untuk aksi ketika tombol Google ditekan
  void onGooglePressed() {
    // Logic untuk login dengan Google
    print('Google login pressed');
    // Tambahkan logika untuk menangani login menggunakan Google di sini
  }

  // Fungsi untuk aksi ketika tombol Facebook ditekan
  void onFacebookPressed() {
    // Logic untuk login dengan Facebook
    print('Facebook login pressed');
    // Tambahkan logika untuk menangani login menggunakan Facebook di sini
  }
}
