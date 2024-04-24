part of 'managers.dart';

class DependencyManager {
  static final GetIt _getIt = GetIt.instance;

  static void init() {
    _getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl());
    log("initialized Successfully", name: "Dependency Manager");
  }

  static T get<T extends Object>() {
    return _getIt.get<T>();
  }
}
