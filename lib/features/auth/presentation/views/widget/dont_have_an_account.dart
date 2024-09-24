import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget
  ({super.key, required this.text1,required this.text2,required this.onTap});
  final String text1;
  final String text2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return       Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text1,
              style: TextStyles.regular16.copyWith(
             color: AppColors.grey
              ),),
              GestureDetector(
                onTap: onTap,
                child: Text(text2,style:TextStyles.regular16.copyWith(
                  color: AppColors.primaryColor,
                )),
              ),              
            ],
          );
  }
}