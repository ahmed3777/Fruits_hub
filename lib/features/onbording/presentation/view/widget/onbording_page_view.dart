
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:fruits_hub/features/onbording/presentation/view/widget/page_view_item.dart';
import 'package:fruits_hub/generated/l10n.dart';


class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return  PageView(
      controller: pageController,
              children:  [
                PageViewItem(
                  isVisibil:true,
                  image:Assets.assetsImagesPageViewItem1Image ,
                  backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
                  subtitle: S.of(context).onBordingsubtitle1,
                  title:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).onBordingtitle1,
                      style: TextStyles.bold23,
                         ),
                    Text(S.of(context).onBordingtitle2,
                      style: TextStyles.bold23.copyWith(color: AppColors.primaryColor),),
                           ],
      ),
       ),
              PageViewItem(
          isVisibil: false,
          image:Assets.assetsImagesPageViewItem2Image,
          backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
          subtitle:S.of(context).onBordingsubtitle2,
          title: Text(S.of(context).onBordingtitle3,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        )
       ],
      
    );
    
  }
}