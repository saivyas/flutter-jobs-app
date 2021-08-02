import 'package:flutter/material.dart';
import 'package:jobs_app/protos/gen/main.pbgrpc.dart';

class JobListTile extends StatelessWidget {
  final Job job;

  const JobListTile({
    Key key,
    @required this.job,
  })  : assert(job != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        job.title,
        overflow: TextOverflow.ellipsis,
      ),
      // subtitle: Text(repo.owner.login),
      trailing: _createTrailing(),
      // onTap: () => onTap(repo.owner.login),
    );
  }

  Row _createTrailing() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(job.title.toString()),
        const SizedBox(width: 4),
        Icon(Icons.star),
      ],
    );
  }
}
