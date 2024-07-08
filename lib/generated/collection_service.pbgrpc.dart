//
//  Generated code. Do not modify.
//  source: collection_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'collection_service.pb.dart' as $2;
import 'google/protobuf/empty.pb.dart' as $0;

export 'collection_service.pb.dart';

@$pb.GrpcServiceName('chatbot.collections.v2.CollectionService')
class CollectionServiceClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$2.CollectionID, $2.Collection>(
      '/chatbot.collections.v2.CollectionService/Get',
      ($2.CollectionID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Collection.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.Empty, $2.Collections>(
      '/chatbot.collections.v2.CollectionService/List',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Collections.fromBuffer(value));
  static final _$store = $grpc.ClientMethod<$2.Collection, $0.Empty>(
      '/chatbot.collections.v2.CollectionService/Store',
      ($2.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$2.Collection, $0.Empty>(
      '/chatbot.collections.v2.CollectionService/Delete',
      ($2.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  CollectionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.Collection> get($2.CollectionID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$2.Collections> list($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> store($2.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$store, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($2.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('chatbot.collections.v2.CollectionService')
abstract class CollectionServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.collections.v2.CollectionService';

  CollectionServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CollectionID, $2.Collection>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CollectionID.fromBuffer(value),
        ($2.Collection value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Collections>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Collections value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Collection, $0.Empty>(
        'Store',
        store_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Collection.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Collection, $0.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Collection.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.Collection> get_Pre($grpc.ServiceCall call, $async.Future<$2.CollectionID> request) async {
    return get(call, await request);
  }

  $async.Future<$2.Collections> list_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return list(call, await request);
  }

  $async.Future<$0.Empty> store_Pre($grpc.ServiceCall call, $async.Future<$2.Collection> request) async {
    return store(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre($grpc.ServiceCall call, $async.Future<$2.Collection> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.Collection> get($grpc.ServiceCall call, $2.CollectionID request);
  $async.Future<$2.Collections> list($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> store($grpc.ServiceCall call, $2.Collection request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $2.Collection request);
}
