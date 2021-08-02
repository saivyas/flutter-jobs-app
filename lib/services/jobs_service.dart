import 'package:jobs_app/models/job_response.dart';
import 'package:jobs_app/services/grpc_client.dart';

class JobService {
  final GrpcClient grpcClient;

  const JobService({
    this.grpcClient = const GrpcClient(),
  });

  Future<JobRespResult> loadJobs(String query) async {
    return await grpcClient.getJobs();
  }
}
