import 'package:flutter/material.dart';
import 'package:jobs_app/actions/actions.dart';
import 'package:jobs_app/models/nav_state.dart';
import 'package:jobs_app/screens/dummy_screen_1.dart';
import 'package:jobs_app/screens/dummy_screen_2.dart';
import 'package:jobs_app/screens/job_list_screen.dart';
import 'package:redux/redux.dart';

Reducer<NavState> navReducer = combineReducers([
  TypedReducer<NavState, ChangeBottomNavAction>(_changeBottomNav),
]);

NavState _changeBottomNav(NavState state, ChangeBottomNavAction action) {
  Widget rootScreen = state.rootScreen;

  if (action.index == 0) {
    rootScreen = JobListScreen();
  } else if (action.index == 1) {
    rootScreen = DummyScreen1();
  } else if (action.index == 2) {
    rootScreen = DummyScreen2();
  }

  return state.copyWith(
    selectedBottomNav: action.index,
    rootScreen: rootScreen,
  );
}
