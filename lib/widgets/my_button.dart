import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String textButton;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double elevation;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const MyButton({
    super.key,
    required this.textButton,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.elevation,
    required this.onPressed,
    required this.width,
    this.height = 50, // Tinggi default button
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size(width, height),
      ),
      onPressed: onPressed,
      child: Text(textButton),
    );
  }
}
