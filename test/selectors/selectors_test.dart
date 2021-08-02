import 'package:flutter/material.dart';
import 'package:jobs_app/models/app_state.dart';
import 'package:jobs_app/models/job_state.dart';
import 'package:jobs_app/selectors/selectors.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:jobs_app/reducers/app_reducer.dart';

void main() {
  group('The Selectors', () {
    Store<AppState> store;

    setUp(() {
      store = Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
      );
    });

    group('when rootScreenSelector', () {
      Widget result;

      setUp(() {
        result = rootScreenSelector(store.state);
      });

      test('should return the root screen', () {
        expect(result == null, false);
      });
    });

    group('when selectedBottomNavSelector', () {
      int result;

      setUp(() {
        result = selectedBottomNavSelector(store.state);
      });

      test('should return the selected bottom navigation index', () {
        expect(result, 0);
      });
    });

    group('when jobStateSelector', () {
      JobState result;

      setUp(() {
        result = jobStateSelector(store.state);
      });

      test('should return the repo state', () {
        expect(result == null, false);
      });
    });
  });
}
