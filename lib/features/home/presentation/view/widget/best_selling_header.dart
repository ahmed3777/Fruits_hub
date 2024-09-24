import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/build_error_bar.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'best_selling_view');
        buildErrorBar(context, "best_selling_view");
      },
      child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(S.of(context).bestSelling,
                     style: TextStyles.bold16,),
                   Text(S.of(context).more,
                    style: TextStyles.regular13.copyWith(color: AppColors.grey),),
              ],
              ),
    );
  }
}