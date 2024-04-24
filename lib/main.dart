import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:promina/core/caching/caching.dart';
import 'package:promina/core/managers/managers.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyManager.init();
  await Future.wait([
    CachingHelper.init(),
  ]);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => App(),
    ),
  );
}
