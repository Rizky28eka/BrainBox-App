import 'package:braindbox/apps/controllers/core/splash_controller2.dart';
import 'package:braindbox/apps/utils/color.dart';
import 'package:braindbox/apps/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController2());
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: ResponsiveUtils.to.getHeightPercentage(0.02)),
                  Text(
                    'Braindbox',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ResponsiveUtils.to.getWidthPercentage(0.070),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: ResponsiveUtils.to.getHeightPercentage(0.05)),
              child: Column(
                children: [
                  SizedBox(
                      height: ResponsiveUtils.to.getHeightPercentage(0.02)),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'Created BY ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              ResponsiveUtils.to.getWidthPercentage(0.035),
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'R2E',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
