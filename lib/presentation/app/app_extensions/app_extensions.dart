import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part './router/router.dart';
part './settings/app_settings.dart';
part './settings/theme/policies/colors/colors.dart';
part './settings/theme/policies/colors/dark.dart';
part './settings/theme/policies/colors/light.dart';
part './settings/theme/theme_provider.dart';
part './settings/theme/theme_setting.dart';

final cwProviderContainerScope = ProviderContainer();

class CWAppX {
  CWAppX._();

  static final globalProviderScope = cwProviderContainerScope;

  static CWThemeSetting theme = CWThemeSetting._();
}
