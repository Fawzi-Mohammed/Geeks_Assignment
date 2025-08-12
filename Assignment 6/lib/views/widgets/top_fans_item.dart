import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopFansItem extends StatelessWidget {
  const TopFansItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83,
      height: 133,
      child: Stack(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

              image: DecorationImage(
                image: AssetImage('assets/images/E.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 55,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,

                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFE7EFFC).withAlpha(200),
                    offset: Offset(2, 2),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 16,
                  ),
                ],
              ),
              width: 83,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Wade Warren',
                      style: TextStyle(
                        fontFamily: 'Hind',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Beautician',
                      style: TextStyle(
                        fontFamily: 'Hind',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      width: 44,
                      height: 23,
                      decoration: BoxDecoration(
                        color: Color(0xFF827BEB).withOpacity(0.14),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/star.svg',
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '4.9',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Hind',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
