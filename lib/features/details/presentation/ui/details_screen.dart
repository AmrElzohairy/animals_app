import 'package:animals_app/features/home/data/models/grid_items_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.gridItemsModel});
  final GridItemsModel gridItemsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Image.asset(
                    gridItemsModel.imageUrl,
                    fit: BoxFit.cover,
                    height: MediaQuery.sizeOf(context).height * 0.45,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Container(
                      width: double.infinity,
                      height: 452.81,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.50, 0.85),
                          end: Alignment(0.50, 0.12),
                          colors: [
                            const Color(0xFF30312D),
                            const Color(0xE530312D),
                            const Color(0x001E1F18),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.07),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gridItemsModel.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23.07,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'By',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.61,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Virginia Morell',
                                    style: TextStyle(
                                      color: const Color(0xFFFEC158),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Divider(
                                color: const Color(0xFF787878),
                                height: 20,
                                thickness: 2,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Publised May 13, 2020 ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF13140D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      gridItemsModel.description * 20,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
