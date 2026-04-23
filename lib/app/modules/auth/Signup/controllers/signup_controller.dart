import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../theme/app_color.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //TODO: Implement LoginController

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    FirebaseCreateAccount();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> FirebaseCreateAccount()async{
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Get.snackbar("Success", "Account created successfully",backgroundColor: AppColor.green);
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print("Firebase Error: ${e.message}");
      }
      Get.snackbar("Firebase Exception", "Exception ${e.toString()}",backgroundColor: AppColor.red);
    } catch (e) {
      if (kDebugMode) {
        print("This is exception $e");
      }
      Get.snackbar("Exception", "Exception ${e.toString()}",backgroundColor: AppColor.redbtn);
    }
  }
}
