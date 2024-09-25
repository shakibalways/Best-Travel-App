import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      labelColor: Color(0xff1BBA85),
      indicatorColor: const Color(0xff1BBA85),
      unselectedLabelColor: Colors.grey,
      dividerColor: Colors.transparent,
      controller: tabController,
      tabs: const [
        Tab(
          child: Text("All",),
        ),
        Tab(
          child: Text("America",),
        ),
        Tab(
          child: Text("Europe",),
        ),
        Tab(
          child: Text("Asia",),
        ),
        Tab(
          child: Text("Oceania",),
        ),
      ],
    );
  }
}
