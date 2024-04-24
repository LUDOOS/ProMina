import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:promina/core/navigation/navigation.dart';
import 'package:promina/core/resources/resources.dart';

abstract class ImagePickerHelper {
  static showOption({ValueChanged<File>? onGet}) {
    showDialog(
      context: NavigationHelper.navigatorKey.currentContext!,
      builder: (_) {
        return GlassOptionDialog(
          onGalleryPressed: () => openGallery(onGet: onGet),
          onCameraPressed: () => openCamera(onGet: onGet),
        );
      },
    );
  }

  static openGallery({ValueChanged<File>? onGet}) async {
    NavigationHelper.goBack();
    var _image = await ImagePicker().pickImage(source: ImageSource.gallery);
    onGet!(File(_image!.path));
  }

  static openCamera({ValueChanged<File>? onGet}) async {
    NavigationHelper.goBack();
    var _image = await ImagePicker().pickImage(source: ImageSource.camera);
    onGet!(File(_image!.path));
  }
}

class GlassOptionDialog extends StatelessWidget {
  final VoidCallback onGalleryPressed;
  final VoidCallback onCameraPressed;

  const GlassOptionDialog({
    super.key,
    required this.onGalleryPressed,
    required this.onCameraPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        width: AppDimensions.width,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _OptionButton(
              onPressed: onGalleryPressed,
              text: 'Gallery',
              color: AppColors.COLOR1,
              image: AppImages.GALLERY,
            ),
            const SizedBox(height: 30),
            _OptionButton(
              onPressed: onCameraPressed,
              text: 'Camera',
              color: AppColors.COLOR2,
              image: AppImages.CAMERA,
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String image;
  final Color color;
  const _OptionButton({
    required this.onPressed,
    required this.text,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 35,
              width: 35,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 27,
                  color: AppColors.FONTS,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
