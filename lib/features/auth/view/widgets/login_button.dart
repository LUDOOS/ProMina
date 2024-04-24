import 'package:flutter/material.dart';
import 'package:promina/features/auth/view/widgets/primary_button.dart';

import '../../../../core/resources/resources.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onTap: onTap,
      height: 50.h,
      borderRadius: 10.r,
      fontSize: 18.sp,
      text: "Submit",
    );
  }
}
