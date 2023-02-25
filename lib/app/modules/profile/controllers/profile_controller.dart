import 'package:get/get.dart';
import 'package:nested_navigation_with_getx_and_bottomnavigationbar/app/core/values/navigation_ids.dart';
import 'package:nested_navigation_with_getx_and_bottomnavigationbar/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  void goToSettingPage() {
    // id is necessary for nested routing, id must be and number same as key of Navigator in ProfileWrapper
    Get.toNamed(Routes.SETTING, id: nestedNavigationProfileId);
  }
}
