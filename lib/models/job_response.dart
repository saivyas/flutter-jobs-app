import 'package:collection/collection.dart';
import 'package:jobs_app/protos/gen/main.pbgrpc.dart';

class JobRespResult {
  final List<Job> jobs;
  JobRespResult({this.jobs});
  factory JobRespResult.initial() {
    return JobRespResult(
      jobs: [],
    );
  }
  factory JobRespResult.fromJson(JobResponse json) {
    return JobRespResult(
      jobs: json.jobs.toList(),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is JobRespResult && listEquals(other.jobs, jobs);
  }

  @override
  int get hashCode => jobs.hashCode;
}
