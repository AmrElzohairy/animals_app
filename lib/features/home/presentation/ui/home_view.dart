import 'package:animals_app/features/home/presentation/ui/widgets/home_carosal_slider.dart';
import 'package:animals_app/features/home/presentation/ui/widgets/home_grid_view.dart';
import 'package:animals_app/features/home/presentation/ui/widgets/home_header.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this); // Number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(child: SafeArea(child: HomeHeader())),
            SliverToBoxAdapter(child: HomeCarosalSlider()),
            SliverAppBar(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.yellowAccent,
                  labelColor: Colors.white,
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  unselectedLabelColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 12),
                  tabs: [
                    Tab(text: "Animals"),
                    Tab(text: "Science"),
                    Tab(text: "Environment"),
                    Tab(text: "Travel"),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20, ),
              child: HomeGridView(
                gridItems: animalList,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: HomeGridView(
                gridItems: scienceList,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: HomeGridView(
                gridItems: envList,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: HomeGridView(
                gridItems: travelList,
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0XFF787878),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xffBEDE61),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          // Handle bottom navigation tap
        },
      ),
    );
  }
}
