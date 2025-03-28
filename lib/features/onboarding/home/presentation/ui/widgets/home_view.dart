import 'package:animals_app/features/onboarding/home/presentation/ui/widgets/home_carosal_slider.dart';
import 'package:animals_app/features/onboarding/home/presentation/ui/widgets/home_header.dart';
import 'package:flutter/material.dart';

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
    _tabController = TabController(length: 3, vsync: this); // Number of tabs
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
              automaticallyImplyLeading: false,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(text: "Tab 1"),
                    Tab(text: "Tab 2"),
                    Tab(text: "Tab 3"),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildTabContent("Content for Tab 1"),
            _buildTabContent("Content for Tab 2"),
            _buildTabContent("Content for Tab 3"),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String content) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return ListTile(title: Text("$content - Item ${index + 1}"));
      },
    );
  }
}
