import 'package:animals_app/features/home/presentation/ui/widgets/home_carosal_slider.dart';
import 'package:animals_app/features/home/presentation/ui/widgets/home_header.dart';
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
            _buildTabContent("Content for Tab 1"),
            _buildTabContent("Content for Tab 2"),
            _buildTabContent("Content for Tab 3"),
            _buildTabContent("Content for Tab 4"),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String content) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return ListTile(title: Text("$content - Item ${index + 1}"));
      },
    );
  }
}
