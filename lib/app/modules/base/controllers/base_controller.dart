import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_with_getx_and_bottomnavigationbar/app/modules/base/views/profile_wrapper.dart';
import 'package:nested_navigation_with_getx_and_bottomnavigationbar/app/modules/home/views/home_view.dart';

class BaseController extends GetxController {
  RxInt selectedIndex = 0.obs;
  late List<Widget> widgetOptions;

  BaseController() {
    widgetOptions = <Widget>[
      const HomeView(),
      // this wrapper allow us to nested routes inside it
      const ProfileWrapper(),
    ];
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
