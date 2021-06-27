library main_tabs_state;

import 'package:built_value/built_value.dart';

part 'main_tabs_state.g.dart';

abstract class MainTabsState
    implements Built<MainTabsState, MainTabsStateBuilder> {
  String get error;
  bool get success;
  bool get isLoading;
  double? get lat;
  double? get long;

  MainTabsState._();

  factory MainTabsState([
    updates(MainTabsStateBuilder b),
  ]) = _$MainTabsState;

  factory MainTabsState.initail() {
    return MainTabsState((b) => b
      ..error = ''
      ..success = false
      ..isLoading = false
      ..lat = null
      ..long = null);
  }
}
