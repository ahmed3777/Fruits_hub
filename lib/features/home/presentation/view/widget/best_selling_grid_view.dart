import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/fruit_item.dart';


class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 118 / 200,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
        ),
        itemCount:18,
        itemBuilder: (context, index) {
          return const FruitItem();

        });
  }
}