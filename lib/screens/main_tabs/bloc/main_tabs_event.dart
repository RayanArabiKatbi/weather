library main_tabs_event;

import 'package:built_value/built_value.dart';

part 'main_tabs_event.g.dart';

abstract class MainTabsEvent {}

// Get Lat Long Event
abstract class GetLatLong extends MainTabsEvent
    implements Built<GetLatLong, GetLatLongBuilder> {
  GetLatLong._();

  factory GetLatLong([
    updates(GetLatLongBuilder b),
  ]) = _$GetLatLong;
}

// Clear Error Event
abstract class ClearError extends MainTabsEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();

  factory ClearError([
    updates(ClearErrorBuilder b),
  ]) = _$ClearError;
}

// Change State Event
abstract class ChangeState extends MainTabsEvent
    implements Built<ChangeState, ChangeStateBuilder> {
  ChangeState._();

  factory ChangeState([
    updates(ChangeStateBuilder b),
  ]) = _$ChangeState;
}
