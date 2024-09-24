import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_hub/core/helper_functions/is_arbic.dart';
import 'package:fruits_hub/core/widgets/custom_search_text_field.dart';
import 'package:fruits_hub/features/home/presentation/view/widget/best_selling_grid_view.dart';
import 'package:fruits_hub/features/home/presentation/view/widget/user_profile_card.dart';
import 'best_selling_header.dart';
import 'featured_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                UserProfileCard(
                  imageUrl: 'assets/images/profile_image.png',
                  title: isArabic() ? 'مرحبا بك' : "Welcome ",
                  username: isArabic() ? "احمد ناصر" : "Ahmed Nasr",
                ),
                const SizedBox(
                  height: 16,
                ),
                const SearchField(),
                const SizedBox(
                  height: 12,
                ),
                const FeaturedList(),
                const SizedBox(
                  height: 12,
                ),
                const BestSellingHeader(),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
         const BestSellingGridView()
        ],
      ),
    );
  }
}
