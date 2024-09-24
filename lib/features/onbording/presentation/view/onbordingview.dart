import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onbording/presentation/view/widget/onbording_body.dart';

class Onbordingview extends StatelessWidget {
  const Onbordingview({super.key});
static const routeName="onbording";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBordingBody()),
    );
  }
}