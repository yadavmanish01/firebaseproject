
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    print("splashbinding called");
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
