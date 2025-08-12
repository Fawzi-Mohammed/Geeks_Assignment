import 'package:assignment6/views/widgets/custom_appbar.dart';
import 'package:assignment6/views/widgets/hero_section.dart';
import 'package:assignment6/views/widgets/search_section.dart';
import 'package:assignment6/views/widgets/top_fans_section.dart';
import 'package:assignment6/views/widgets/spical_text.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          SearchSection(),
          HeroSection(),
          SizedBox(height: 16),
          SpicalText(text: 'Top Rated Freelances'),
          TopFansSection(),
          SizedBox(height: 40),
          SpicalText(text: 'Top Services'),
        ],
      ),
    );
  }
}
