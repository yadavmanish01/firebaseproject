import 'package:firebasetutorial/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../Appstyles/app_styles.dart';
import '../../../../../widgets/constants/sizedBoxExt.dart';
import '../../../../../widgets/custom_appbar.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_form_field.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: CustomAppBar(title: "Singup"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomFormField(
                hint: "Email",
                controller: controller.emailController,
              ),
              20.ph,
              CustomFormField(
                hint: "Password",
                controller: controller.passwordController,
              ),
              60.ph,
              CustomButton(
                title: "Signup",
                onPressed: ()async{
                  if (_formkey.currentState!.validate()) {
                    await controller.FirebaseCreateAccount();
                  }
                },
              ),
              20.ph,
              Text("Or", style: AppStyle.headingSmall),
              TextButton(
                onPressed: () {Get.toNamed(Routes.LOGIN);},
                child: Text(
                  "Login",
                  style: AppStyle.headingMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
