import 'package:assignment6/widgets/top_fans_item.dart';
import 'package:flutter/material.dart';

class TopFansSection extends StatelessWidget {
  const TopFansSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 132,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: TopFansItem(rate: 4,),
          );
        },
      ),
    );
  }
}
