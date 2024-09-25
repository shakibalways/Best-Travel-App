import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
