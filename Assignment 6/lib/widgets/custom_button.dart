import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.width,
    required this.height,
    required this.buttonName,
  });
  final VoidCallback? onPressed;
  final double width, height;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onPressed,

      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Color(0xFF827BEB),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontFamily: 'Hind',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
