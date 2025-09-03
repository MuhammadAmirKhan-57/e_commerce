import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final double height;
  final double width;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.onTap,
    this.height = 34,
    this.width = 80,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
