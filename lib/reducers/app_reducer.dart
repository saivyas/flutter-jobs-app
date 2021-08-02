import 'package:jobs_app/models/app_state.dart';
import 'package:jobs_app/reducers/job_reducer.dart';
import 'package:jobs_app/reducers/nav_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    navState: navReducer(state.navState, action),
    jobState: jobReducer(state.jobState, action),
  );
}
