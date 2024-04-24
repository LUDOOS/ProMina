import 'package:flutter/material.dart';
import 'package:promina/core/navigation/navigation.dart';

class SnackbarHelper {
  static void show({
    required String message,
    Color? backgroundColor,
    Color? textColor,
    double? fontSize,
    Duration? duration,
  }) {
    SnackBar snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    );

    NavigationHelper.scaffoldState.currentState!.hideCurrentSnackBar();
    NavigationHelper.scaffoldState.currentState!.showSnackBar(snackBar);
  }
}
