import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/onbording/presentation/view/widget/onbording_page_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class OnBordingBody extends StatefulWidget {
  const OnBordingBody({super.key});

  @override
  State<OnBordingBody> createState() => _OnBordingBodyState();
}
class _OnBordingBodyState extends State<OnBordingBody> {
    /// This method is called when the widget is first created. It sets up the
    /// [pageController] and adds a listener to it. The listener updates the
    /// [currentPage] variable with the rounded value of the current page.
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
    currentPage=pageController.page!.round();
    setState(() {});
    });
  }
@override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
          Expanded(child: OnBordingPageView(
            pageController: pageController,
          )),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currentPage == 1 
              ? AppColors.primaryColor
               :AppColors.primaryColor.withOpacity(0.5),
            ),
          ),
        const  SizedBox(height: 29,),

          Visibility(
            visible:currentPage==1?true:false,
            maintainState: true,
            maintainSize: true,
            maintainAnimation: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(onPressed: (){
                 Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(SigInView.routeName);
              }, text: S.of(context).onBordingbutton),
            ),
          ),
        const  SizedBox(height: 43,),
      ],
    );
  }
}