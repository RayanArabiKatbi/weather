import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/screens/main_tabs/bloc/main_tabs_event.dart';
import 'package:weather/screens/main_tabs/bloc/main_tabs_state.dart';

class MainTabsBloc extends Bloc<MainTabsEvent, MainTabsState> {
  MainTabsBloc(
    MainTabsState initialState,
  ) : super(initialState);

  @override
  Stream<MainTabsState> mapEventToState(
    MainTabsEvent event,
  ) async* {
    if (event is GetLatLong) {
      yield state.rebuild((b) => b
        ..error = ''
        ..success = false
        ..isLoading = true
        ..lat = null
        ..long = null);

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      yield state.rebuild((b) => b
        ..error = ''
        ..success = true
        ..isLoading = false
        ..lat = position.latitude
        ..long = position.longitude);
    }
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = '');
    }
    if (event is ChangeState) {
      yield state.rebuild((b) => b..success = false);
    }
  }
}
