part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final List<String> images;

  const HomeSuccess(this.images);
}

class HomeFailure extends HomeState {
  final String message;

  const HomeFailure(this.message);
}
