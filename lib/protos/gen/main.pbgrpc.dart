///
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'main.pb.dart' as $0;
export 'main.pb.dart';

class JobsServiceClient extends $grpc.Client {
  static final _$jobsList = $grpc.ClientMethod<$0.EmptyRequest, $0.JobResponse>(
      '/jobslist.JobsService/JobsList',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.JobResponse.fromBuffer(value));

  JobsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.JobResponse> jobsList($0.EmptyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$jobsList, request, options: options);
  }
}

abstract class JobsServiceBase extends $grpc.Service {
  $core.String get $name => 'jobslist.JobsService';

  JobsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.JobResponse>(
        'JobsList',
        jobsList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.JobResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.JobResponse> jobsList_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return jobsList(call, await request);
  }

  $async.Future<$0.JobResponse> jobsList(
      $grpc.ServiceCall call, $0.EmptyRequest request);
}
