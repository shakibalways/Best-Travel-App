import 'package:best_travel_app/components/my_custom_search_field.dart';
import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:best_travel_app/controller/getx/uiController/home/home.dart';
import 'package:best_travel_app/views/pages/home/widget/my_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 35,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/icon/menu.png"),
                      Image.asset("assets/images/icon/notification.png"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const MyCustomText(
                    maxLines: 2,
                    text: "Where Do You \nWant Go",
                    fSize: 28,
                    fWeight: FontWeight.w400,
                  ),
                  const SizedBox(height: 20),
                  MyCustomSearchField(
                    hText: "Search Your Trip",
                    controller: homeController.searchController,
                    icon: Icons.search,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: MyTabBar(
                tabController: homeController.tabController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 320,
                width: double.maxFinite,
                color: Colors.transparent,
                child: TabBarView(
                  controller: homeController.tabController,
                  children: [
                    ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 270,
                          width: 220,
                          margin: const EdgeInsets.only(
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/tabBar/image 5.png"),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      MyCustomText(
                                        text: "Bermuda, USA",
                                        fSize: 20,
                                        fWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                      MyCustomText(
                                        text: "Starting at \$1000",
                                        color: Colors.white,
                                        fWeight: FontWeight.w300,
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.favorite, color: Colors.white),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 270,
                          width: 250,
                          margin: const EdgeInsets.only(
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/tabBar/image 5.png",
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      MyCustomText(
                                        text: "Bermuda, USA",
                                        fSize: 20,
                                        fWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                      Text(" Starting at \$1000"),
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 270,
                          width: 250,
                          margin: const EdgeInsets.only(
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/tabBar/image 5.png",
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      MyCustomText(
                                        text: "Bermuda, USA",
                                        fSize: 20,
                                        fWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                      Text(" Starting at \$1000"),
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 270,
                          width: 250,
                          margin: const EdgeInsets.only(
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/tabBar/image 5.png",
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      MyCustomText(
                                        text: "Bermuda, USA",
                                        fSize: 20,
                                        fWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                      Text(" Starting at \$1000"),
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 270,
                          width: 250,
                          margin: const EdgeInsets.only(
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/tabBar/image 5.png",
                              ),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      MyCustomText(
                                        text: "Bermuda, USA",
                                        fSize: 20,
                                        fWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                      Text(" Starting at \$1000"),
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
