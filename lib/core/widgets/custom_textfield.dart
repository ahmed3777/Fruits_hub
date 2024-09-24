import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
    const CustomTextFormField({super.key, 
    required this.hintText,
    required this.keyboardType, 
              this.suffixIcon,
              this.onSaved,
              this.obscureText = false});

    final String hintText;
    final TextInputType keyboardType;
    final Widget? suffixIcon;
    final  void Function(String?)? onSaved;
    final bool obscureText ;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: obscureText,
      onSaved:onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder (
          borderRadius:  BorderRadius.all(Radius.circular(10)),
        ),
        hintText: hintText,
        hintStyle:  TextStyles.bold13.copyWith(color: AppColors.grey),
        suffixIcon: suffixIcon,
      ),
    );
  }
}