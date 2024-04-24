part of 'resources.dart';

abstract class AppText {
  static TextStyle h1({double? size, FontWeight? weight}) => TextStyle(
        fontSize: size ?? 32,
        fontWeight: weight ?? FontWeight.w500,
        color: AppColors.FONTS,
      );
}
