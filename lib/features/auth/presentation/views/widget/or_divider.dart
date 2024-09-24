import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(child: Divider(color: Color(0xffdcdede),)),
          const SizedBox(width: 16,),
          Text(S.of(context).or,style: TextStyles.semiBold16),
          const Expanded(child: Divider(color: Color(0xffdcdede),)),
          const SizedBox(width: 16,),
      ],
    );
   
  }
}