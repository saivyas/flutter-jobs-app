import 'package:jobs_app/models/job_response.dart';
import 'package:jobs_app/protos/gen/main.pb.dart';
import 'package:meta/meta.dart';

@immutable
class JobState {
  final bool isLoading;
  final JobRespResult data;
  final String error;

  JobState({
    @required this.isLoading,
    @required this.data,
    @required this.error,
  });

  factory JobState.initial() {
    return JobState(
      isLoading: false,
      data: JobRespResult(jobs: [Job(title: "New Job")]),
      error: null,
    );
  }

  JobState copyWith({
    bool isLoading,
    JobRespResult data,
    String error,
  }) {
    return JobState(
      isLoading: isLoading ?? this.isLoading,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is JobState &&
        other.isLoading == isLoading &&
        other.data == data &&
        other.error == error;
  }

  @override
  int get hashCode => isLoading.hashCode ^ data.hashCode ^ error.hashCode;
}
