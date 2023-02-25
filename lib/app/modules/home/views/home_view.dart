import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

// we cant use GetView<HomeController> because home controller need to call with Get.put or Get.lazyPut.
// These methods are available in HomeBinding but because we use BottomNavigationBar in BaseView, we can't call the binding methods of BottomNavigationBar's pages.
// So, I setup controller in build method of each BottomNavigationBar's pages
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // !!!
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(controller.count.value.toString()),
            ),
            TextButton(
                onPressed: controller.increment, child: const Text("increment"))
          ],
        ),
      ),
    );
  }
}
