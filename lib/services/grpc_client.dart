import 'dart:convert';

import 'package:jobs_app/models/job_response.dart';
import 'package:jobs_app/protos/gen/main.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class GrpcClient {
  static String baseURL = '192.168.39.96';

  const GrpcClient();
  Future<JobRespResult> getJobs() async {
    JobRespResult response = JobRespResult.initial();
    final channel = ClientChannel(
      '192.168.213.96',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = JobsServiceClient(channel);

    try {
      final response = await stub.jobsList(EmptyRequest());
      return JobRespResult.fromJson(response);
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return response;
  }
}
