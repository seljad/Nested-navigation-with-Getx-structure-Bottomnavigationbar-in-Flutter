import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

// In here we can use GetView<ProfileController>, because bindings of ProfileView and SettingView called in ProfileWrapper
class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: controller.goToSettingPage,
          child: const Text("Go to setting"),
        ),
      ),
    );
  }
}
