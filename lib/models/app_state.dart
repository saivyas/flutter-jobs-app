import 'package:jobs_app/models/job_state.dart';
import 'package:jobs_app/models/nav_state.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final NavState navState;
  final JobState jobState;

  AppState({
    @required this.navState,
    @required this.jobState,
  });

  factory AppState.initial() {
    return AppState(
      navState: NavState.initial(),
      jobState: JobState.initial(),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppState &&
        other.navState == navState &&
        other.jobState == jobState;
  }

  @override
  int get hashCode => navState.hashCode ^ jobState.hashCode;
}
