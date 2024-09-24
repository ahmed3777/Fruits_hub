import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:fruits_hub/features/home/presentation/view/homeview.dart';
import 'package:fruits_hub/features/onbording/presentation/view/onbordingview.dart';
import 'package:fruits_hub/features/splash/presentation/views/splashview.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case Onbordingview.routeName:
      return MaterialPageRoute(builder: (context) => const Onbordingview());

    case SigInView.routeName:
      return MaterialPageRoute(builder: (context) => const SigInView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    case Homeview.routeName:
      return MaterialPageRoute(builder: (context) => const Homeview());

    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());
    
    
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}