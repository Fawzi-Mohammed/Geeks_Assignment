import 'package:assignment6/widgets/custom_button.dart';
import 'package:assignment6/widgets/custom_rating.dart';
import 'package:flutter/material.dart';

class TopService extends StatelessWidget {
  const TopService({
    super.key,
    required this.backImage,
    required this.title,
    required this.icon,
    required this.job,
    required this.deception,
  });
  final String backImage;
  final String title;
  final String icon;
  final String job;
  final String deception;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerLeft,
      children: [
        Container(
          margin: EdgeInsets.only(left: 24, bottom: 8),
          width: 209.55,
          height: 165.12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(backImage),
            ),
          ),
        ),
        Positioned(
          right: 55,
          child: Container(
            padding: EdgeInsets.all(8),
            width: 216,
            height: 123,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(4, 4),
                  blurStyle: BlurStyle.normal,
                  color: Color(0xFFDAE5F2).withAlpha(70),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    icon,
                    width: 38,
                    height: 38,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Hind',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        job,
                        style: TextStyle(
                          fontFamily: 'Hind',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFF827BEB),
                        ),
                      ),
                      Text(
                        deception,
                        style: TextStyle(
                          fontFamily: 'Hind',
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color(0xFF6B6B6B),
                        ),
                      ),
                      SizedBox(height: 8),
                      Expanded(
                        child: Row(
                          children: [
                            CustomRating(rate: 4.9),
                            SizedBox(width: 4),
                            CustomButton(
                              buttonName: 'Book Now',
                              height: 31,
                              width: 102,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
