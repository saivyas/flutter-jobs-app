import 'package:jobs_app/models/job_response.dart';
import 'package:jobs_app/services/grpc_client.dart';
import 'package:jobs_app/services/jobs_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks.dart';

void main() {
  group('The JobService', () {
    JobService uut;
    GrpcClient mockGrpcClient;

    setUp(() {
      mockGrpcClient = MockGrpcClient();

      uut = JobService(
        grpcClient: mockGrpcClient,
      );
    });

    group('when loadRepoResult', () {
      Future<JobRespResult> result;
      String givenQuery = 'some query';
      JobRespResult givenResponse = JobRespResult();

      setUp(() {
        when(mockGrpcClient.getJobs())
            .thenAnswer((_) => Future.value(givenResponse));

        result = uut.loadJobs(givenQuery);
      });

      test('should return the result of the fetch', () async {
        expect(await result, givenResponse);
      });
    });
  });
}
