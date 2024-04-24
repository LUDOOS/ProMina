import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../core/helpers/validation_helper.dart';
import '../../../../core/resources/resources.dart';
import '../../cubit/auth_cubit.dart';
import 'custom_text_field.dart';
import 'login_button.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
    required this.loginKey,
    required TextEditingController emilController,
    required TextEditingController passwordController,
  })  : _emilController = emilController,
        _passwordController = passwordController;

  final GlobalKey<FormState> loginKey;
  final TextEditingController _emilController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.45),
          ),
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: loginKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "LOG IN",
                  style: AppText.h1(weight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hint: "email",
                  validator: ValidationHelper.instance.validateEmail,
                  controller: _emilController,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  hint: "password",
                  validator: ValidationHelper.instance.validatePassword,
                  controller: _passwordController,
                ),
                const SizedBox(height: 50),
                AuthButton(
                  onTap: () {
                    if (loginKey.currentState!.validate()) {
                      AuthCubit.instance.login(
                          email: _emilController.text,
                          password: _passwordController.text);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
