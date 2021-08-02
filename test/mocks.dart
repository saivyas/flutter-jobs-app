import 'package:jobs_app/services/grpc_client.dart';
import 'package:jobs_app/services/jobs_service.dart';
import 'package:mockito/mockito.dart';

class MockJobService extends Mock implements JobService {}

class MockGrpcClient extends Mock implements GrpcClient {}
