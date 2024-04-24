import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina/core/caching/caching.dart';
import 'package:promina/core/navigation/navigation.dart';
import 'package:promina/features/auth/cubit/auth_cubit.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        navigatorKey: NavigationHelper.navigatorKey,
        navigatorObservers: [NavigationHelper.routeObserver],
        scaffoldMessengerKey: NavigationHelper.scaffoldState,
        onGenerateRoute: NavigationHelper.generateRoute,
        initialRoute: CachingHelper.instance!.readBoolean(CachingKey.IS_LOGIN)
            ? AppRoute.HOME
            : AppRoute.LOGIN,
      ),
    );
  }
}
