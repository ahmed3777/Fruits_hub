import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        title: Text(title, 
        style: TextStyles.bold19,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
}