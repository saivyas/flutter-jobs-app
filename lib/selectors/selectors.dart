import 'package:flutter/material.dart';
import 'package:jobs_app/models/app_state.dart';
import 'package:jobs_app/models/job_state.dart';

Widget rootScreenSelector(AppState state) => state.navState.rootScreen;

int selectedBottomNavSelector(AppState state) =>
    state.navState.selectedBottomNav;

JobState jobStateSelector(AppState state) => state.jobState;
