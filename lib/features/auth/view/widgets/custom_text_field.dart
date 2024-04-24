import 'package:flutter/material.dart';
import 'package:promina/core/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.obscure = false,
    this.controller,
    this.icon,
    this.obscureClicked,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.title,
  });

  final String hint;
  final String? title;
  final bool obscure;
  final TextEditingController? controller;
  final IconData? icon;
  final VoidCallback? obscureClicked;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...{
          Text(
            title!,
            style: TextStyle(fontSize: 20.sp),
          ),
          SizedBox(height: 10.h),
        },
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          obscureText: obscure,
          validator: validator,
          onChanged: onChanged,
          keyboardType: keyboardType,
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          decoration: InputDecoration(
            fillColor: AppColors.WHITE,
            filled: true,
            suffixIcon: IconButton(
              icon: Icon(
                icon,
                size: 20,
                color: Colors.grey,
              ),
              onPressed: obscureClicked,
            ),
            hintText: hint,
            focusedBorder: AppDecoration.ROUNDEDBORDER(),
            border: AppDecoration.ROUNDEDBORDER(),
            disabledBorder: AppDecoration.ROUNDEDBORDER(),
            errorBorder: AppDecoration.ROUNDEDBORDER(),
            enabledBorder: AppDecoration.ROUNDEDBORDER(),
          ),
        ),
      ],
    );
  }
}
