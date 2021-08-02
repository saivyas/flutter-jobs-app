import 'package:flutter/material.dart';
import 'package:jobs_app/containers/job_list.dart';

class JobListScreen extends StatelessWidget {
  JobListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(child: JobsList()),
        ],
      ),
    );
  }
}
