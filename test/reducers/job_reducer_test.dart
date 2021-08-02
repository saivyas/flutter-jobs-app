import 'package:jobs_app/actions/actions.dart';
import 'package:jobs_app/models/job_response.dart';
import 'package:jobs_app/models/job_state.dart';
import 'package:jobs_app/protos/gen/main.pb.dart';
import 'package:jobs_app/reducers/job_reducer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';

void main() {
  group('The repoReducer', () {
    Reducer<JobState> uut;
    Store<JobState> store;

    setUp(() {
      uut = jobReducer;

      store = Store<JobState>(
        uut,
        initialState: JobState.initial(),
      );
    });

    test('should set the initial state', () {
      expect(store.state.isLoading, false);
      expect(store.state.data.jobs, []);
      expect(store.state.error, null);
    });

    group('when JobLoadAction', () {
      setUp(() {
        store.dispatch(JobsLoadAction());
      });

      test('should set loading to true', () {
        expect(store.state.isLoading, true);
      });

      test('should set error to null', () {
        expect(store.state.error, null);
      });
    });

    group('when JobLoadSuccessAction', () {
      JobRespResult givenResult = JobRespResult(
        jobs: <Job>[
          Job(
            title: 'some name',
          ),
        ],
      );

      setUp(() {
        store.dispatch(JobsLoadSuccessAction(
          data: givenResult,
        ));
      });

      test('should set loading to false', () {
        expect(store.state.isLoading, false);
      });

      test('should set data to given repos', () {
        expect(store.state.data, givenResult);
      });

      test('should set error to null', () {
        expect(store.state.error, null);
      });
    });

    group('when JobLoadFailureAction', () {
      final givenError = 'error message';

      setUp(() {
        store.dispatch(JobsLoadFailureAction(
          error: givenError,
        ));
      });

      test('should set loading to false', () {
        expect(store.state.isLoading, false);
      });

      test('should set error to given error', () {
        expect(store.state.error, givenError);
      });
    });
  });
}
