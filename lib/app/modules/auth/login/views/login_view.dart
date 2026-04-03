import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetutorial/Appstyles/app_styles.dart';
import 'package:firebasetutorial/widgets/custom_appbar.dart';
import 'package:firebasetutorial/widgets/custom_button.dart';
import 'package:firebasetutorial/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../widgets/constants/sizedBoxExt.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: CustomAppBar(title: "Login"),
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
                title: "Login",
                onPressed: ()async{
                  if (_formkey.currentState!.validate()) {
                    await controller.FirebaseCreateAccount();
                  }
                },
              ),
              20.ph,
              Text("Or", style: AppStyle.headingSmall),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Login with phone number",
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
