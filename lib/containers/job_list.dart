import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jobs_app/actions/actions.dart';
import 'package:jobs_app/components/error_text.dart';
import 'package:jobs_app/components/job_list_title.dart';
import 'package:jobs_app/components/loading.dart';
import 'package:jobs_app/models/app_state.dart';
import 'package:jobs_app/models/job_state.dart';
import 'package:jobs_app/protos/gen/main.pbgrpc.dart';
import 'package:jobs_app/selectors/selectors.dart';
import 'package:redux/redux.dart';

class JobsList extends StatelessWidget {
  JobsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      onInit: (store) => {_ViewModel.fromStore(store).getJobs()},
      builder: (BuildContext context, _ViewModel viewModel) {
        if (viewModel.jobsState.isLoading) {
          return Loading();
        }

        if (viewModel.jobsState.error != null) {
          return ErrorText(error: viewModel.jobsState.error);
        }
        if (viewModel.jobsState.data.jobs.length == 0)
          return Container(
            child: Text("No Jobs"),
          );

        final List<Job> jobItems = viewModel.jobsState.data.jobs;

        return ListView.separated(
          itemCount: jobItems.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index) {
            return JobListTile(
              job: jobItems[index],
            );
          },
        );
      },
    );
  }
}

class _ViewModel {
  final JobState jobsState;

  final Function() getJobs;

  _ViewModel({
    @required this.jobsState,
    @required this.getJobs,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      jobsState: jobStateSelector(store.state),
      getJobs: () => store.dispatch(JobsLoadAction()),
    );
  }
}
