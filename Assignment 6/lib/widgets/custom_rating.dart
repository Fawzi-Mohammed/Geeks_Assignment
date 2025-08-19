import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, required this.rate});
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 23,
      decoration: BoxDecoration(
        color: Color(0xFF827BEB).withAlpha(25),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/star.svg', width: 12, height: 12),
          SizedBox(width: 4),
          Text(
            rate.toStringAsFixed(1),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Hind',
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
