import 'package:assignment6/widgets/custom_appbar.dart';
import 'package:assignment6/widgets/hero_section.dart';
import 'package:assignment6/widgets/search_section.dart';
import 'package:assignment6/widgets/top_fans_section.dart';
import 'package:assignment6/widgets/spical_text.dart';
import 'package:assignment6/widgets/top_service_builder.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SearchSection(),
          HeroSection(),
          SizedBox(height: 16),
          SpicalText(text: 'Top Rated Freelances'),
          TopFansSection(),
          SizedBox(height: 40),
          SpicalText(text: 'Top Services'),
          SizedBox(height: 16),
          TopServiceBuilder(),
        ],
      ),
    );
  }
}
