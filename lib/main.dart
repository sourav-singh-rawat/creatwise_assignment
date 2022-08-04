import 'package:creatwise_assignment/presentation/app/app.dart';
import 'package:creatwise_assignment/presentation/app/app_extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    UncontrolledProviderScope(
      container: CWAppX.globalProviderScope,
      child: const ProviderScope(
        child: CWApp(),
      ),
    ),
  );
}
