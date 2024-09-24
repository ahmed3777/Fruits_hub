import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/is_arbic.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:fruits_hub/features/home/presentation/view/widget/featured_item_button.dart';
import 'package:svg_flutter/svg.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});
  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width - 32;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child:Stack(
                  children: [
                    Positioned(
                      left: isArabic()?0: itemWidth * .4,
                      top: 0,
                      bottom: 0,
                      right: isArabic()?itemWidth * .4: 0,
                      child: SvgPicture.asset(
                        Assets.assetsImagesPageViewItem1Image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: itemWidth * .5,
                      child: Stack(
                        // Use Stack to overlay the rotated image and other content
                        children: [
                          isArabic()?
                          Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: svg.Svg(Assets
                                      .assetsImagesFeaturedItemBackground),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                         : Transform.rotate(
                            angle: pi, // Rotate by 180 degrees (pi radians)
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: svg.Svg(Assets
                                      .assetsImagesFeaturedItemBackground),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: isArabic()? EdgeInsets.only(right: 33): EdgeInsets.only(left: 33),
                            child: Column(
                              crossAxisAlignment: isArabic()
                                  ? CrossAxisAlignment.start
                                  : CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                Text(
                                  isArabic() ? 'عروض العيد' : 'Holiday Offers',
                                  style: TextStyles.regular13
                                      .copyWith(color: Colors.white),
                                  textAlign: isArabic()
                                      ? TextAlign.right
                                      : TextAlign.left,
                                ),
                                const Spacer(),
                                Text(
                                 isArabic() ? 'خصم 25%': '25% OFF',
                                  style: TextStyles.bold19
                                      .copyWith(color: Colors.white),
                                  textAlign: isArabic()
                                      ? TextAlign.right
                                      : TextAlign.left,
                                ),
                                const SizedBox(height: 11),
                                FeaturedItemButton(onPressed: () {}),
                                const SizedBox(height: 29),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
