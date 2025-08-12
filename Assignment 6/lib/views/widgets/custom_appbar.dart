import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/images/menu-burger.svg'),
            SizedBox(width: 16),
            SvgPicture.asset('assets/images/logo.svg'),
            Spacer(flex: 1),
            SvgPicture.asset('assets/images/Frame 6.svg'),
            SvgPicture.asset('assets/images/Frame 9.svg'),
          ],
        ),
      ),
    );
  }
}
