import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.backgroundImage, required this.subtitle, required this.title, required this.isVisibil});
  
  final String image,backgroundImage,subtitle;
  final Widget title;
  final bool isVisibil;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.40,
          child: Stack(children:[ 
            Positioned.fill(child: SvgPicture.asset(backgroundImage,fit: BoxFit.fill)),
           Positioned(
            bottom: 0,
            right:0 ,
            left: 0,
            child: SvgPicture.asset(image,)),

            Visibility(
              visible: isVisibil,
              child: TextButton(onPressed: (){
                Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(SigInView.routeName);
              },
               child: Text(S.of(context).esc,
               style: TextStyles.regular13
               )),
            ),
                ]),
        ),
        const SizedBox(height: 64,),
        title,
        const SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(subtitle,
          style: TextStyles.semiBold13.copyWith(
            color: const Color(0xFF4E5456),
          ),
          textAlign: TextAlign.center,),
        ),
      ]);
  }
}
