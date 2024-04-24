part of 'auth_cubit.dart';

@immutable
sealed class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

final class LoadingState extends AuthState {}

final class Unauthenticated extends AuthState {}

final class Authenticated extends AuthState {}

final class AuthenticationFailed extends AuthState {}
