import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina/core/helpers/snake_bar_helper.dart';

import '../data/repo/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo repo;
  var imageList = <String>[];

  HomeCubit(this.repo) : super(HomeLoading());

  fetchGalleries() async {
    var result = await repo.getGalleries();
    result.fold(
      (failure) => emit(HomeFailure(failure!.message)),
      (model) {
        SnackbarHelper.show(message: model.message);
        emit(HomeSuccess(model.images));
      },
    );
  }

  postGallery({required String image}) async {
    imageList.add(image);
    //CachingHelper.instance?.writeData(CachingKey.IMAGES, imageList);
    await repo.postGallery(image: image);
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoading());
    await fetchGalleries();
  }
}
