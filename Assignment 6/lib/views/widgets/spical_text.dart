import 'package:flutter/material.dart';

class SpicalText extends StatelessWidget {
  const SpicalText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 32,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFC2D7F2).withAlpha(80), Colors.white],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Hind',
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'View All',
              style: TextStyle(
                fontFamily: 'Hind',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF154883),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF154883),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
