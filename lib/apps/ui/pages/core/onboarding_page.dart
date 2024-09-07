import 'package:braindbox/apps/controllers/core/onboarding_controller.dart';
import 'package:braindbox/apps/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());

    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    onPageChanged: controller.updateIndex,
                    children: [
                      _buildPage(
                        imagePath: 'assets/images/onboarding1.png',
                        title: 'Unlock the Power Of Future AI',
                        description:
                            'Chat with the smartest AI and experience the power of AI with us',
                      ),
                      _buildPage(
                        imagePath: 'assets/images/onboarding2.png',
                        title: 'Chat With Your Favourite AI',
                        description:
                            'Engage with the smartest AI and enhance your experience',
                      ),
                      _buildPage(
                        imagePath: 'assets/images/onboarding3.png',
                        title: 'Boost Your Mind Power with AI',
                        description:
                            'Utilize AI to elevate your cognitive abilities',
                      ),
                    ],
                  ),
                ),
                Obx(() => BottomNavigationButtons(
                      currentIndex: controller.currentIndex.value,
                      onGoToPrevious: controller.goToPrevious,
                      onGoToNext: () => controller.goToNext(context),
                    )),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () => controller.skip(context),
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage({
    required String imagePath,
    required String title,
    required String description,
  }) {
    final OnboardingController controller = Get.find<OnboardingController>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 350,
          height: 350,
        ),
        const SizedBox(height: 20),
        SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          effect: SlideEffect(
            activeDotColor: Colors.white,
            dotColor: Colors.white.withOpacity(0.5),
            dotHeight: 8,
            dotWidth: 8,
            spacing: 16,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class BottomNavigationButtons extends StatelessWidget {
  final int currentIndex;
  final void Function() onGoToPrevious;
  final void Function() onGoToNext;

  const BottomNavigationButtons({
    required this.currentIndex,
    required this.onGoToPrevious,
    required this.onGoToNext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      width: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (currentIndex > 0)
            IconButton(
              onPressed: onGoToPrevious,
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            )
          else
            const SizedBox(width: 48),
          const Text(
            '|',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          IconButton(
            onPressed: onGoToNext,
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }
}
