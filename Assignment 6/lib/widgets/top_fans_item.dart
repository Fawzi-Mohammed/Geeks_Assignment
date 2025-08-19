import 'package:assignment6/widgets/custom_rating.dart';
import 'package:flutter/material.dart';
 
class TopFansItem extends StatelessWidget {
  const TopFansItem({super.key, required this.rate});
  final double rate;
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
                    CustomRating(rate: rate),
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
