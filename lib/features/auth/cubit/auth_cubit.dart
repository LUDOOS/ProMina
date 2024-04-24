import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina/features/auth/data/model/user_model.dart';

import '../../../core/caching/caching.dart';
import '../../../core/navigation/navigation.dart';
import '../data/repo/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  static AuthCubit get instance =>
      BlocProvider.of(NavigationHelper.navigatorKey.currentContext!);

  AuthCubit() : super(Unauthenticated());

  void login({required String email, required String password}) async {
    emit(LoadingState());
    if (email.isEmpty || password.isEmpty) {
      return null;
    }
    try {
      var result = await AuthRepo.login(email: email, password: password);
      if (result.data['token'] != null) {
        CachingHelper.instance
            ?.writeData(CachingKey.TOKEN, result.data['token']);
        CachingHelper.instance?.writeData(CachingKey.IS_LOGIN, true);
        NavigationHelper.navigateTo(AppRoute.HOME, clean: true);
        var user = UserModel.fromJson(result.data['user']);
        emit(Authenticated());
      }
    } catch (e) {
      log("message", error: e);
      ScaffoldMessenger.of(NavigationHelper.navigatorKey.currentContext!)
          .showSnackBar(const SnackBar(content: Text('Invalid credentials')));
      emit(AuthenticationFailed());
    }
  }

  void logOut() async {
    CachingHelper.instance?.writeData(CachingKey.TOKEN, null);
    NavigationHelper.navigateTo(AppRoute.LOGIN, clean: true);
    CachingHelper.instance?.writeData(CachingKey.IS_LOGIN, false);
  }
}
