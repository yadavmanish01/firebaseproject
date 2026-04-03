import 'dart:async';

import 'package:firebasetutorial/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady called");
    Timer(Duration(seconds: 1),(){Get.offAllNamed(Routes.LOGIN);});
  }

  @override
  void onClose() {
    super.onClose();
  }

}
