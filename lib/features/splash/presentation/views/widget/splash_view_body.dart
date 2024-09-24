import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/helper_functions/is_arbic.dart';
import 'package:fruits_hub/core/services/firebase_auth_services.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/features/home/presentation/view/homeview.dart';
import 'package:fruits_hub/features/onbording/presentation/view/onbordingview.dart';
import 'package:svg_flutter/svg.dart';
// ignore: depend_on_referenced_packages


import '../../../../auth/presentation/views/signin_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  static const routeName="splashviewbody";

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
  
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    excuteNavigation();
  }
  @override
  Widget build(BuildContext context) {
    return  Column (
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: isArabic()? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            
            SvgPicture.asset("assets/images/plant.svg"),
          ],
        ),     
        SvgPicture.asset("assets/images/logo.svg"),   
        SvgPicture.asset("assets/images/splash_bottom.svg", fit: BoxFit.fill),

      ]
    );
  }

  /// Executes the navigation logic based on the value of `kIsOnBoardingViewSeen`.
  ///
  /// This function retrieves the value of `kIsOnBoardingViewSeen` from the shared preferences.
  /// If the value is `true`, it navigates to the `LoginView` route using `Navigator.pushReplacementNamed`.
  /// If the value is `false`, it navigates to the `Onboardingview` route using `Navigator.pushReplacementNamed`.
  ///
  /// This function is called after a delay of 3 seconds using `Future.delayed`.
  ///
  /// Parameters:
  /// - None
  ///
  /// Return Type:
  /// - None
void excuteNavigation() {
  bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
    if (isOnBoardingViewSeen) {
      var isLoggedIn= FirebaseAuthService().isLoggedIn();
      if(isLoggedIn){
        Navigator.pushReplacementNamed(context, Homeview.routeName);
      }else{
      Navigator.pushReplacementNamed(context, SigInView.routeName);
      }
    }else{
      Navigator.pushReplacementNamed(context, Onbordingview.routeName);
    }
  });
}

/// Checks if the current locale is Arabic.
///
/// Returns true if the current locale is "ar", false otherwise.

}
