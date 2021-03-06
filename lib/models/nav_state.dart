import 'package:flutter/material.dart';
import 'package:jobs_app/screens/job_list_screen.dart';

@immutable
class NavState {
  final int selectedBottomNav;
  final Widget rootScreen;

  NavState({
    @required this.selectedBottomNav,
    @required this.rootScreen,
  });

  factory NavState.initial() {
    return NavState(
      selectedBottomNav: 0,
      rootScreen: JobListScreen(),
    );
  }

  NavState copyWith({
    int selectedBottomNav,
    Widget rootScreen,
  }) {
    return NavState(
      selectedBottomNav: selectedBottomNav ?? this.selectedBottomNav,
      rootScreen: rootScreen ?? this.rootScreen,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NavState &&
          runtimeType == other.runtimeType &&
          selectedBottomNav == other.selectedBottomNav &&
          rootScreen == other.rootScreen;

  @override
  int get hashCode => selectedBottomNav.hashCode ^ rootScreen.hashCode;
}
