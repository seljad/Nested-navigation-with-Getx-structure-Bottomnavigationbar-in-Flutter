import 'package:get/get.dart';
import 'package:nested_navigation_with_getx_and_bottomnavigationbar/app/core/values/navigation_ids.dart';

class SettingController extends GetxController {
  void goBack() {
    // id is necessary to go back to previous nested route
    Get.back(id: nestedNavigationProfileId);
  }
}

