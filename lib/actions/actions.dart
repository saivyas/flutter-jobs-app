import 'package:jobs_app/models/job_response.dart';
import 'package:meta/meta.dart';

class ChangeBottomNavAction {
  final int index;

  ChangeBottomNavAction({
    @required this.index,
  });
}

class JobsLoadAction {
  JobsLoadAction();
}

class JobsLoadSuccessAction {
  final JobRespResult data;

  JobsLoadSuccessAction({
    @required this.data,
  });
}

class JobsLoadFailureAction {
  final String error;

  JobsLoadFailureAction({
    @required this.error,
  });
}
