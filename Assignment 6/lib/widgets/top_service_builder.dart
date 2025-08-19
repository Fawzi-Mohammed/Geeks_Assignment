import 'package:assignment6/widgets/top_service_item.dart';
import 'package:flutter/material.dart';

class TopServiceBuilder extends StatelessWidget {
  const TopServiceBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<TopService> freelance = [
      TopService(
        backImage: 'assets/images/image6.png',
        title: 'Miss Zachary Will',
        icon: 'assets/images/Ellipse1097.png',
        job: 'Beautician',
        deception: 'Doloribus saepe aut necessit qui non qui.',
      ),
      TopService(
        backImage: 'assets/images/image 7.png',
        title: 'Miss Zachary Will',
        icon: 'assets/images/Ellipse1097.png',
        job: 'Beautician',
        deception: 'Doloribus saepe aut necessit qui non qui.',
      ),
      TopService(
        backImage: 'assets/images/image 8.png',
        title: 'Miss Zachary Will',
        icon: 'assets/images/Ellipse1097.png',
        job: 'Beautician',
        deception: 'Doloribus saepe aut necessit qui non qui.',
      ),
    ];
    return ListView.builder(
      itemCount: freelance.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return freelance[index];
      },
    );
  }
}
