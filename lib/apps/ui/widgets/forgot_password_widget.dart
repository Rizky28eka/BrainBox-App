import 'package:braindbox/apps/controllers/auth/forgot_password_controller.dart';
import 'package:braindbox/apps/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget _buildOption({
  required IconData icon,
  required String title,
  required String subtitle,
  required String option,
}) {
  final ForgotPasswordController controller =
      Get.find<ForgotPasswordController>();

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
