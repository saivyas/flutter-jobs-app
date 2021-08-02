import 'package:jobs_app/actions/actions.dart';
import 'package:jobs_app/middleware/app_middleware.dart';
import 'package:jobs_app/models/app_state.dart';
import 'package:jobs_app/models/job_response.dart';
import 'package:jobs_app/protos/gen/main.pb.dart';
import 'package:jobs_app/services/jobs_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:jobs_app/reducers/app_reducer.dart';
import 'package:mockito/mockito.dart';

import '../mocks.dart';

void main() {
  group('The middleware', () {
    AppMiddleware uut;
    Store<AppState> store;

    JobService mockJobService;

    setUp(() {
      mockJobService = MockJobService();

      uut = AppMiddleware(
        job_service: mockJobService,
      );

      store = Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
        middleware: uut.createMiddleware(),
      );
    });

    group('when JobLoadAction', () {
      final givenQuery = 'some query';

      test('should have the default state', () {
        expect(store.state.jobState.data.jobs, []);
        expect(store.state.jobState.error, null);
      });

      group('and the repository request throws an exception', () {
        Exception givenException = Exception();

        setUp(() {
          when(mockJobService.loadJobs(givenQuery)).thenThrow(givenException);

          store.dispatch(JobsLoadAction());
        });

        test('should set the error', () {
          expect(store.state.jobState.error, givenException.toString());
        });
      });

      group('and the jobs request succeeds without issue', () {
        JobRespResult givenResult = JobRespResult(
          jobs: <Job>[
            Job(
              title: 'some name',
            ),
          ],
        );

        setUp(() {
          when(mockJobService.loadJobs(givenQuery))
              .thenAnswer((_) => Future.value(givenResult));

          store.dispatch(JobsLoadAction());
        });

        test('should set the data', () {
          expect(store.state.jobState.data, givenResult);
        });
      });
    });
  });
}
