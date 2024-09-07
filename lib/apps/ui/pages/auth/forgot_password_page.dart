import 'package:braindbox/apps/controllers/auth/forgot_password_controller.dart';
import 'package:braindbox/apps/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
  final ForgotPasswordController controller =
      Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(
              controller.responsiveUtils.getWidthPercentage(0.04)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(
                      controller.responsiveUtils.getWidthPercentage(0.03)),
                  decoration: BoxDecoration(
                    color: greyColor.withOpacity(0.1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(
                        controller.responsiveUtils.getWidthPercentage(0.03)),
                  ),
                  child: IconButton(
                    iconSize:
                        controller.responsiveUtils.getWidthPercentage(0.06),
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.03)),
              Text(
                "Forget Password",
                style: TextStyle(
                  fontSize: controller.headingFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.02)),
              Text(
                "Select which contact details should we use to reset your password",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: controller.bodyFontSize,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.05)),
              _buildOption(
                icon: Icons.email,
                title: "Email",
                subtitle: "Code sent to your email",
                option: "email",
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.02)),
              _buildOption(
                icon: Icons.phone,
                title: "Phone",
                subtitle: "Code sent to your phone",
                option: "phone",
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.05)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    controller.navigateToResetPassword();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonBackground1,
                    padding: EdgeInsets.symmetric(
                        vertical: controller.responsiveUtils
                            .getHeightPercentage(0.02)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          controller.responsiveUtils.getWidthPercentage(0.03)),
                    ),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontSize: controller.labelFontSize,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required String option,
  }) {
    return Obx(() => GestureDetector(
          onTap: () {
            controller.selectOption(option);
          },
          child: Container(
            padding: EdgeInsets.all(
                controller.responsiveUtils.getWidthPercentage(0.04)),
            decoration: BoxDecoration(
              border: Border.all(
                color: controller.selectedOption.value == option
                    ? Colors.white
                    : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(
                  controller.responsiveUtils.getWidthPercentage(0.03)),
              color: buttonBackground2,
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(
                      controller.responsiveUtils.getWidthPercentage(0.02)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: circleBackground,
                  ),
                  child: Icon(
                    icon,
                    color: controller.selectedOption.value == option
                        ? Colors.white
                        : Colors.white70,
                  ),
                ),
                SizedBox(
                    width: controller.responsiveUtils.getWidthPercentage(0.04)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: controller.headingFontSize,
                        fontWeight: FontWeight.bold,
                        color: controller.selectedOption.value == option
                            ? Colors.white
                            : Colors.white70,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: controller.bodyFontSize,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
