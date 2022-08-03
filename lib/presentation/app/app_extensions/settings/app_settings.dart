part of '../app_extensions.dart';

abstract class CWAppSetting<Current, Switch> {
  Current get current;

  void switchTo(Switch type);
}
