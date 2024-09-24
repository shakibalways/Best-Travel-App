import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      indicatorColor: Colors.deepPurpleAccent,
      unselectedLabelColor: Colors.grey,
      controller: tabController,
      tabs: const [
        Tab(
          child: Text("View All"),
        ),
        Tab(
          child: Text("HeadPhone"),
        ),
        Tab(
          child: Text("Beosound"),
        ),
        Tab(
          child: Text("Beoplay"),
        ),
      ],
    );
  }
}
