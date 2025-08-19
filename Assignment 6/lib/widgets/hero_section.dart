import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroke_text/stroke_text.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 203,
      // margin: EdgeInsets.only(top: 185),
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   begin: Alignment.centerLeft,
        //   end: Alignment.centerRight,
        //   colors: [Colors.white, Color(0xFF9CB9DD).withAlpha(90)],
        // ),
        image: DecorationImage(
          image: AssetImage('assets/images/Rectangle.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StrokeText(
                    text: 'Todays Deal',
                    textStyle: TextStyle(
                      fontFamily: 'Hind',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    strokeColor: Colors.black,
                    strokeWidth: 1.5,
                  ),
                  Text(
                    '50% OFF',
                    style: TextStyle(
                      fontFamily: 'Hind',
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Et provident eos est dolore. Eum libero eligendi molestias aut et quibusdam aspernatur.',
                    style: TextStyle(
                      fontFamily: 'Hind',
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                      color: Color(0xFF5C6F81),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    width: 107,
                    height: 26,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle 30.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'BUY IT NOW',
                          style: TextStyle(
                            fontFamily: 'Hind',
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 13),
                        SvgPicture.asset(
                          'assets/images/fi_2889731.svg',
                          width: 14,
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: 194,
                  height: 194,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [Color(0xFF2065B2), Colors.white.withAlpha(0)],
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Image.asset('assets/images/image 4.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
