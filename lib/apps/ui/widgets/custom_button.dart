import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double? width; // Optional width
  final double? height; // Optional height
  final double? fontSize; // Optional font size
  final FontWeight? fontWeight; // Optional font weight
  final EdgeInsetsGeometry? padding; // Optional padding
  final double? borderRadius; // Optional border radius
  final double? elevation; // Optional elevation
  final BorderSide? borderSide; // Optional border side (for outlined effect)

  const CustomButton({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    this.width = 350, // Default width
    this.height = 65, // Default height
    this.fontSize = 18, // Default font size
    this.fontWeight = FontWeight.bold, // Default font weight
    this.padding = const EdgeInsets.symmetric(vertical: 15), // Default padding
    this.borderRadius = 30.0, // Default border radius
    this.elevation = 0.0, // Default elevation
    this.borderSide, // Optional border side
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Use custom width
      height: height, // Use custom height
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding, // Custom padding
          backgroundColor: backgroundColor, // Button background color
          foregroundColor: textColor, // Button text color
          elevation: elevation, // Custom elevation
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(borderRadius!), // Custom border radius
            side: borderSide ??
                BorderSide.none, // Optional border for outlined button
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize, // Custom font size
            fontWeight: fontWeight, // Custom font weight
          ),
        ),
      ),
    );
  }
}
