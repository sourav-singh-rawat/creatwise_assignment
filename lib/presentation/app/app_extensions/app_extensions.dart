import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part './settings/app_settings.dart';
part './settings/theme/theme_provider.dart';
part './settings/theme/theme_setting.dart';
part './router/router.dart';
part './settings/theme/policies/colors/colors.dart';
part './settings/theme/policies/colors/dark.dart';
part './settings/theme/policies/colors/light.dart';

class CWAppX {
  CWAppX._();

  static BuildContext? get currentContext => router.navigatorKey.currentContext;

  static CWRouter router = CWRouter._();

  static CWThemeSetting theme = CWThemeSetting._();
}
