import 'package:jobs_app/actions/actions.dart';
import 'package:jobs_app/models/nav_state.dart';
import 'package:jobs_app/reducers/nav_reducer.dart';
import 'package:jobs_app/screens/dummy_screen_1.dart';
import 'package:jobs_app/screens/dummy_screen_2.dart';
import 'package:jobs_app/screens/job_list_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';

void main() {
  group('The navReducer', () {
    Reducer<NavState> uut;
    Store<NavState> store;

    setUp(() {
      uut = navReducer;

      store = Store<NavState>(
        uut,
        initialState: NavState.initial(),
      );
    });

    test('should set the initial state', () {
      expect(store.state.selectedBottomNav, 0);
      expect(store.state.rootScreen.runtimeType, JobListScreen().runtimeType);
    });

    group('when ChangeBottomNavAction', () {
      group('and the index is 0', () {
        final int givenIndex = 0;

        setUp(() {
          store.dispatch(ChangeBottomNavAction(index: givenIndex));
        });

        test('should set the selected bottom nav to the given index', () {
          expect(store.state.selectedBottomNav, givenIndex);
        });

        test('should set the root screen to JobListScreen', () {
          expect(
              store.state.rootScreen.runtimeType, JobListScreen().runtimeType);
        });
      });

      group('and the index is 1', () {
        final int givenIndex = 1;

        setUp(() {
          store.dispatch(ChangeBottomNavAction(index: givenIndex));
        });

        test('should set the selected bottom nav to the given index', () {
          expect(store.state.selectedBottomNav, givenIndex);
        });

        test('should set the root screen to DummyScreen1', () {
          expect(
              store.state.rootScreen.runtimeType, DummyScreen1().runtimeType);
        });
      });

      group('and the index is 2', () {
        final int givenIndex = 2;

        setUp(() {
          store.dispatch(ChangeBottomNavAction(index: givenIndex));
        });

        test('should set the selected bottom nav to the given index', () {
          expect(store.state.selectedBottomNav, givenIndex);
        });

        test('should set the root screen to DummyScreen2', () {
          expect(
              store.state.rootScreen.runtimeType, DummyScreen2().runtimeType);
        });
      });
    });
  });
}
