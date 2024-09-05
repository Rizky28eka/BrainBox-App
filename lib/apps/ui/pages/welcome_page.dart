import 'package:braindbox/apps/controllers/welcome_controller.dart';
import 'package:braindbox/apps/ui/widgets/custom_button.dart';
import 'package:braindbox/apps/utils/color.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final WelcomeController _controller =
      WelcomeController(); // Instance of controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'BrainBox',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                label: 'Login',
                backgroundColor: Colors.black.withOpacity(0.01),
                textColor: Colors.white,
                width: 350, // Custom width
                height: 65, // Custom height
                onPressed: () =>
                    _controller.onLoginPressed(context), // Navigate to Login
              ),
              const SizedBox(height: 10),
              CustomButton(
                label: 'Sign Up',
                backgroundColor: Colors.black.withOpacity(0.01),
                textColor: Colors.white,
                width: 350, // Custom width
                height: 65, // Custom height
                onPressed: () => _controller
                    .onSignUpPressed(context), // Navigate to Register
              ),
              const SizedBox(height: 20),
              const Text(
                'Continue With Accounts',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    label: 'Google',
                    backgroundColor: googleBackgroundColor.withOpacity(0.2),
                    textColor: googleBackgroundColor,
                    width: 150, // Custom width
                    height: 50, // Custom height
                    onPressed: _controller.onGooglePressed, // Use controller
                  ),
                  CustomButton(
                    label: 'Facebook',
                    backgroundColor: facebookBackgroundColor.withOpacity(0.2),
                    textColor: facebookBackgroundColor,
                    width: 150, // Custom width
                    height: 50, // Custom height
                    onPressed: _controller.onFacebookPressed, // Use controller
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
