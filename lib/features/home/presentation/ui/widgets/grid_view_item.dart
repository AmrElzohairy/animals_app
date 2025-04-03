import 'package:flutter/material.dart';

import '../../../data/models/grid_items_model.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.gridItemsModel});
  final GridItemsModel gridItemsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
      decoration: ShapeDecoration(
        color: const Color(0xFF363636),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.34),
        ),
        shadows: [
          BoxShadow(
            color: Colors.greenAccent.withValues(alpha: 0.2),
            blurRadius: 9.63,
            offset: Offset(0, 0.04),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x1181D8F1),
            blurRadius: 76.91,
            offset: Offset(0, 50.14),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.34),
            child: Image.asset(
              gridItemsModel.imageUrl,
              height: MediaQuery.sizeOf(context).height * 0.2,
              width: MediaQuery.sizeOf(context).width * 0.45,
              fit: BoxFit.cover,
            ),
          ),
          Spacer(),
          Text(
            gridItemsModel.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
