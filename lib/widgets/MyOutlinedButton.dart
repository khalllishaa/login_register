import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final String label;
  final String iconUrl;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;
  final double borderRadius;
  final double iconHeight;

  const MyOutlinedButton({
    super.key,
    required this.label,
    required this.iconUrl,
    required this.onPressed,
    this.borderColor = Colors.grey,
    this.textColor = Colors.black54,
    this.backgroundColor = Colors.white,
    this.borderRadius = 3.0,
    this.iconHeight = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Image.network(
        iconUrl,
        height: iconHeight,
      ),
      label: Text(
        label,
        style: TextStyle(fontSize: 16, color: textColor),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size(350, 50),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
