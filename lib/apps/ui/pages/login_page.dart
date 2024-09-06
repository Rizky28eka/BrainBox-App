import 'package:braindbox/apps/controllers/register_controller.dart';
import 'package:braindbox/apps/ui/widgets/custom_button.dart';
import 'package:braindbox/apps/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterController controller = Get.put(RegisterController());

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(
              controller.responsiveUtils.getWidthPercentage(0.05)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(
                      controller.responsiveUtils.getWidthPercentage(0.02)),
                  decoration: BoxDecoration(
                    color: greyColor.withOpacity(0.1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(
                        controller.responsiveUtils.getWidthPercentage(0.03)),
                  ),
                  child: IconButton(
                    iconSize:
                        controller.responsiveUtils.getWidthPercentage(0.05),
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.03)),
              Text(
                "Login Your \n Account",
                style: TextStyle(
                  fontSize: controller.headingFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.04)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Your Email",
                  prefixIcon: const Icon(Icons.email, color: Colors.white),
                  fillColor: greyColor.withOpacity(0.1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        controller.responsiveUtils.getWidthPercentage(0.03)),
                  ),
                  labelStyle: TextStyle(
                      color: Colors.white, fontSize: controller.labelFontSize),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.02)),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock, color: Colors.white),
                  suffixIcon:
                      const Icon(Icons.visibility_off, color: Colors.white),
                  fillColor: greyColor.withOpacity(0.1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        controller.responsiveUtils.getWidthPercentage(0.03)),
                  ),
                  labelStyle: TextStyle(
                      color: Colors.white, fontSize: controller.labelFontSize),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.03)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: greyColor.withOpacity(0.1),
                    padding: EdgeInsets.symmetric(
                        vertical: controller.responsiveUtils
                            .getHeightPercentage(0.02)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          controller.responsiveUtils.getWidthPercentage(0.03)),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: controller.bodyFontSize,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.03)),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          fontSize: controller.bodyFontSize,
                          color: Colors.white,
                        ),
                        children: [
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/loginpage');
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: controller.bodyFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: controller.responsiveUtils
                            .getHeightPercentage(0.02)),
                    Container(
                      height: 2,
                      color: Colors.white.withOpacity(0.5),
                      width: controller.responsiveUtils.width,
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.03)),
              Center(
                child: Text(
                  "Continue With Accounts",
                  style: TextStyle(
                    fontSize: controller.bodyFontSize,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                  height: controller.responsiveUtils.getHeightPercentage(0.02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: CustomButton(
                      label: 'Google',
                      backgroundColor: googleBackgroundColor.withOpacity(0.1),
                      textColor: googleBackgroundColor,
                      width: controller.responsiveUtils.getWidthPercentage(0.4),
                      height:
                          controller.responsiveUtils.getHeightPercentage(0.07),
                      borderRadius:
                          controller.responsiveUtils.getWidthPercentage(0.03),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                      width:
                          controller.responsiveUtils.getWidthPercentage(0.05)),
                  Expanded(
                    child: CustomButton(
                      label: 'Facebook',
                      backgroundColor: facebookBackgroundColor.withOpacity(0.1),
                      textColor: facebookBackgroundColor,
                      width: controller.responsiveUtils.getWidthPercentage(0.4),
                      height:
                          controller.responsiveUtils.getHeightPercentage(0.07),
                      borderRadius:
                          controller.responsiveUtils.getWidthPercentage(0.03),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
