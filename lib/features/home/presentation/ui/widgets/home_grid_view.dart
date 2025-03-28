import 'package:animals_app/features/home/presentation/ui/widgets/grid_view_item.dart';
import 'package:flutter/material.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 139.11 / 200.93,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return GridViewItem();
      },
    );
  }
}
