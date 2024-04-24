import 'dart:developer';

import 'package:fpdart/src/either.dart';
import 'package:promina/core/network/network.dart';
import 'package:promina/features/home/data/repo/home_repo.dart';

import '../../../../core/helpers/snake_bar_helper.dart';
import '../models/gallery_model.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future postGallery({required String image}) async {
    try {
      var result = await NetworkHelper.instance.post(
        endPoint: EndPoints.UPLOAD_IMAGE,
        data: {"img": image},
      );
      var galleries = GalleryModel.fromJson(result.data);
      SnackbarHelper.show(message: galleries.message);
    } catch (e) {
      log("message", error: e);
      SnackbarHelper.show(message: ErrorHandler.handle(e).failure!.message);
    }
  }

  @override
  Future<Either<Failure?, GalleryModel>> getGalleries() async {
    try {
      var result =
          await NetworkHelper.instance.get(endPoint: EndPoints.MY_GALLERY);
      var galleries = GalleryModel.fromJson(result.data);
      return Right(galleries);
    } catch (e) {
      log("message", error: e);
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
