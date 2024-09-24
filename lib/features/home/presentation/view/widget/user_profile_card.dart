import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

import '../../../../../core/widgets/notification_widget.dart';

class UserProfileCard extends StatelessWidget {
  final String imageUrl; // URL or asset path for the user image
  final String title;
  final String username;

  const UserProfileCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset(imageUrl), // Adjust size as needed
              //backgroundImage: AssetImage(imageUrl),// Use AssetImage if using local assets
            ),
            const SizedBox(width: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyles.regular16.copyWith(color: AppColors.grey),
                    ),
                    const SizedBox(
                        height: 4), // Space between title and username
                    Text(
                      username,
                      style: TextStyles.bold16,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const  NotificationWidget(), // Display the icon
          ],
        ),
      ),
    );
  }
}
