import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_Navigation_bar.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  static const routeName = "homeview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: CustomNavigationBar()),
        ],
      )),
    );
  }
}
