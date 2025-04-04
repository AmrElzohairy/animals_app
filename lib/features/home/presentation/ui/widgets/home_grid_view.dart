import 'package:animals_app/features/home/data/models/grid_items_model.dart';
import 'package:animals_app/features/home/presentation/ui/widgets/grid_view_item.dart';
import 'package:flutter/material.dart';

import '../../../../details/presentation/ui/details_screen.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key, required this.gridItems});
  final List<GridItemsModel> gridItems;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 139.11 / 200.93,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
      ),
      itemCount: gridItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  DetailsScreen(
                gridItemsModel: gridItems[index],
              )),
            );
          },
          child: GridViewItem(gridItemsModel: gridItems[index]),
        );
      },
    );
  }
}
