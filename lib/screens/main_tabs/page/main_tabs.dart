import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather/injection.dart';
import 'package:weather/screens/location_weather_page/page/location_weather.dart';
import 'package:weather/screens/main_tabs/bloc/main_tabs_bloc.dart';
import 'package:weather/screens/main_tabs/bloc/main_tabs_event.dart';
import 'package:weather/screens/main_tabs/bloc/main_tabs_state.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({Key? key}) : super(key: key);

  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  final _bloc = sl<MainTabsBloc>();
  int _currentIndex = 0;

  @override
  void initState() {
    _bloc.add(GetLatLong());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, MainTabsState state) {
        print('0000000000000 $state');
        error(state.error);
        return Scaffold(
          backgroundColor: Color(0xFF223644),
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Builder(
              builder: (context) {
                switch (_currentIndex) {
                  case 0:
                    return (state.isLoading == true)
                        ? Container()
                        : LocationWeather(
                            lat: state.lat,
                            long: state.long,
                          );
                  default:
                    return LocationWeather(
                      lat: state.lat,
                      long: state.long,
                    );
                }
              },
            ),
          ),
          bottomNavigationBar: BottomNavyBar(
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Colors.white,
                inactiveColor: Color(0xFF869DA4),
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                activeColor: Colors.white,
                inactiveColor: Color(0xFF869DA4),
              ),
            ],
            onItemSelected: (id) => setState(() => _currentIndex = id),
          ),
        );
      },
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
        timeInSecForIosWeb: 2,
        msg: errorCode,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      _bloc.add(ClearError());
    }
  }
}
