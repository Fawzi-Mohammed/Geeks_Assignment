import 'package:assignment6/widgets/top_service_builder.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TopServiceBuilder(),
    );
  }
}