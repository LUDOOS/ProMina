import 'package:flutter/material.dart';
import 'package:promina/core/resources/resources.dart';

import 'button_animation.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? text;
  final Widget? widget;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;
  final Color? color;
  final bool isBorder;
  const PrimaryButton({
    required this.onTap,
    this.text,
    this.height,
    this.width,
    this.borderRadius,
    this.isBorder = false,
    this.fontSize,
    this.color,
    super.key,
    this.widget,
  });
  @override
  Widget build(BuildContext context) {
    return ButtonAnimation(
      onTap: onTap,
      child: Container(
        height: height ?? 55,
        alignment: Alignment.center,
        width: width ?? double.maxFinite,
        decoration: BoxDecoration(
            color: AppColors.PRIMARY,
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
            border: isBorder
                ? Border.all(color: Theme.of(context).primaryColor)
                : null),
        child: widget ??
            Text(
              text!,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    );
  }
}
