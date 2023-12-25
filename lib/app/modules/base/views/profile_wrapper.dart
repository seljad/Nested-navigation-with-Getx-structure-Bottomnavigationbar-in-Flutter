import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_with_getx_and_bottomnavigationbar/app/core/values/navigation_ids.dart';
import 'package:nested_navigation_with_getx_and_bottomnavigationbar/app/modules/setting/views/setting_view.dart';

import '../../../routes/app_pages.dart';
import '../../profile/bindings/profile_binding.dart';
import '../../profile/views/profile_view.dart';
import '../../setting/bindings/setting_binding.dart';

class ProfileWrapper extends StatelessWidget {
  const ProfileWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      // !important
      key: Get.nestedKey(nestedNavigationProfileId),
      initialRoute: Routes.PROFILE,
      onGenerateRoute: (routeSettings) {
        if (routeSettings.name == Routes.PROFILE) {
          return GetPageRoute(
              routeName: Routes.PROFILE,
              title: "Profile Page",
              page: () => const ProfileView(),
              binding: ProfileBinding());
        } else if (routeSettings.name == Routes.SETTING) {
          return GetPageRoute(
              routeName: Routes.SETTING,
              title: "Settings Page",
              page: () => const SettingView(),
              binding: SettingBinding());
        }
        return null;
      },
    );
  }
}
