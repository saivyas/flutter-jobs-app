import 'package:jobs_app/actions/actions.dart';
import 'package:jobs_app/models/job_response.dart';
import 'package:jobs_app/models/job_state.dart';
import 'package:redux/redux.dart';

Reducer<JobState> jobReducer = combineReducers([
  TypedReducer<JobState, JobsLoadSuccessAction>(_jobLoadSuccess),
  TypedReducer<JobState, JobsLoadFailureAction>(_jobLoadFailure),
]);

JobState _jobLoadSuccess(JobState state, JobsLoadSuccessAction action) {
  return state.copyWith(
    isLoading: false,
    data: action.data,
    error: null,
  );
}

JobState _jobLoadFailure(JobState state, JobsLoadFailureAction action) {
  return state.copyWith(
    isLoading: false,
    data: JobRespResult.initial(),
    error: action.error,
  );
}
