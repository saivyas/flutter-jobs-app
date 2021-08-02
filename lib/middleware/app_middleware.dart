import 'package:jobs_app/actions/actions.dart';
import 'package:jobs_app/models/app_state.dart';
import 'package:jobs_app/models/job_response.dart';
import 'package:jobs_app/services/jobs_service.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  final JobService job_service;

  const AppMiddleware({
    this.job_service = const JobService(),
  });

  List<Middleware<AppState>> createMiddleware() {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, dynamic>(_logAction),
      TypedMiddleware<AppState, JobsLoadAction>(_loadJobsData),
    ];
  }

  void _logAction(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    print(action);
  }

  void _loadJobsData(
      Store<AppState> store, JobsLoadAction action, NextDispatcher next) async {
    next(action);

    try {
      final JobRespResult jobResult = await job_service.loadJobs("");
      store.dispatch(JobsLoadSuccessAction(data: jobResult));
    } catch (e) {
      store.dispatch(JobsLoadFailureAction(error: e.toString()));
    }
  }
}
