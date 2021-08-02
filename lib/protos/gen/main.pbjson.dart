///
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = const {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode('CgxFbXB0eVJlcXVlc3Q=');
@$core.Deprecated('Use emptyResponseDescriptor instead')
const EmptyResponse$json = const {
  '1': 'EmptyResponse',
};

/// Descriptor for `EmptyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyResponseDescriptor = $convert.base64Decode('Cg1FbXB0eVJlc3BvbnNl');
@$core.Deprecated('Use jobResponseDescriptor instead')
const JobResponse$json = const {
  '1': 'JobResponse',
  '2': const [
    const {'1': 'jobs', '3': 1, '4': 3, '5': 11, '6': '.jobslist.Job', '10': 'jobs'},
  ],
};

/// Descriptor for `JobResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobResponseDescriptor = $convert.base64Decode('CgtKb2JSZXNwb25zZRIhCgRqb2JzGAEgAygLMg0uam9ic2xpc3QuSm9iUgRqb2Jz');
@$core.Deprecated('Use jobDescriptor instead')
const Job$json = const {
  '1': 'Job',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'createdAt', '3': 4, '4': 1, '5': 3, '10': 'createdAt'},
    const {'1': 'company', '3': 5, '4': 1, '5': 9, '10': 'company'},
    const {'1': 'applylink', '3': 6, '4': 1, '5': 9, '10': 'applylink'},
  ],
};

/// Descriptor for `Job`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobDescriptor = $convert.base64Decode('CgNKb2ISFAoFdGl0bGUYASABKAlSBXRpdGxlEhQKBWVtYWlsGAIgASgJUgVlbWFpbBIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SHAoJY3JlYXRlZEF0GAQgASgDUgljcmVhdGVkQXQSGAoHY29tcGFueRgFIAEoCVIHY29tcGFueRIcCglhcHBseWxpbmsYBiABKAlSCWFwcGx5bGluaw==');
