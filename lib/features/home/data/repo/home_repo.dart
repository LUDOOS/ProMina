import 'package:fpdart/fpdart.dart';
import 'package:promina/core/network/network.dart';

import '../models/gallery_model.dart';

abstract class HomeRepo {
  Future<Either<Failure?, GalleryModel>> getGalleries();
  Future postGallery({required String image});
}
