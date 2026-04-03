import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/app_color.dart';
import 'constants/sizedBoxExt.dart';
import 'custom_button.dart';

class NoInternet extends GetView {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (S) {
        // Get.offAll(SplashView());
      },
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wifi_off_outlined, color: AppColor.primary, size: 100),
            20.ph,
            const Text("Internet Unavailable"),
            20.ph,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: CustomButton(
                  onPressed: () {
                  },
                  title: "Retry"),
            ),
            20.ph,
            ElevatedButton(
              onPressed: () =>
                  AppSettings.openAppSettings(type: AppSettingsType.wifi),
              child: const Text('Open Network Settings'),
            )
          ],
        )),
      ),
    );
  }
}
