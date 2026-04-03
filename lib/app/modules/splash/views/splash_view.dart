import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    //called this forcefullt bcoz without calling controller, controller will not initialise anymore
    final SplashController controller = Get.find();
    return Scaffold(
      appBar: AppBar(title: const Text('SplashView'), centerTitle: true),
      body: const Center(
        child: Text('SplashView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
