//
//  Generated code. Do not modify.
//  source: braingain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'braingain.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;

export 'braingain.pb.dart';

@$pb.GrpcServiceName('endpoint.brainboost.v1.Brainboost')
class BrainboostClient extends $grpc.Client {
  static final _$chat = $grpc.ClientMethod<$0.Prompt, $0.ChatMessage>(
      '/endpoint.brainboost.v1.Brainboost/Chat',
      ($0.Prompt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value));
  static final _$getChatMessages = $grpc.ClientMethod<$0.Collection, $0.ChatMessages>(
      '/endpoint.brainboost.v1.Brainboost/GetChatMessages',
      ($0.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatMessages.fromBuffer(value));
  static final _$getChatMessage = $grpc.ClientMethod<$0.MessageID, $0.ChatMessage>(
      '/endpoint.brainboost.v1.Brainboost/GetChatMessage',
      ($0.MessageID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value));
  static final _$listDocuments = $grpc.ClientMethod<$0.DocumentFilter, $0.Documents>(
      '/endpoint.brainboost.v1.Brainboost/ListDocuments',
      ($0.DocumentFilter value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Documents.fromBuffer(value));
  static final _$indexDocument = $grpc.ClientMethod<$0.Document, $0.IndexProgress>(
      '/endpoint.brainboost.v1.Brainboost/IndexDocument',
      ($0.Document value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IndexProgress.fromBuffer(value));
  static final _$deleteDocument = $grpc.ClientMethod<$0.Document, $1.Empty>(
      '/endpoint.brainboost.v1.Brainboost/DeleteDocument',
      ($0.Document value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$updateDocument = $grpc.ClientMethod<$0.Document, $1.Empty>(
      '/endpoint.brainboost.v1.Brainboost/UpdateDocument',
      ($0.Document value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getCollections = $grpc.ClientMethod<$1.Empty, $0.Collections>(
      '/endpoint.brainboost.v1.Brainboost/GetCollections',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Collections.fromBuffer(value));
  static final _$createCollection = $grpc.ClientMethod<$0.Collection, $1.Empty>(
      '/endpoint.brainboost.v1.Brainboost/CreateCollection',
      ($0.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$updateCollection = $grpc.ClientMethod<$0.Collection, $1.Empty>(
      '/endpoint.brainboost.v1.Brainboost/UpdateCollection',
      ($0.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteCollection = $grpc.ClientMethod<$0.Collection, $1.Empty>(
      '/endpoint.brainboost.v1.Brainboost/DeleteCollection',
      ($0.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getModelUsages = $grpc.ClientMethod<$1.Empty, $0.ModelUsages>(
      '/endpoint.brainboost.v1.Brainboost/GetModelUsages',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ModelUsages.fromBuffer(value));

  BrainboostClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ChatMessage> chat($0.Prompt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chat, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatMessages> getChatMessages($0.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChatMessages, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatMessage> getChatMessage($0.MessageID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChatMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.Documents> listDocuments($0.DocumentFilter request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDocuments, request, options: options);
  }

  $grpc.ResponseStream<$0.IndexProgress> indexDocument($0.Document request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$indexDocument, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteDocument($0.Document request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDocument, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateDocument($0.Document request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDocument, request, options: options);
  }

  $grpc.ResponseFuture<$0.Collections> getCollections($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCollections, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> createCollection($0.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCollection, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateCollection($0.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCollection, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteCollection($0.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCollection, request, options: options);
  }

  $grpc.ResponseFuture<$0.ModelUsages> getModelUsages($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getModelUsages, request, options: options);
  }
}

@$pb.GrpcServiceName('endpoint.brainboost.v1.Brainboost')
abstract class BrainboostServiceBase extends $grpc.Service {
  $core.String get $name => 'endpoint.brainboost.v1.Brainboost';

  BrainboostServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Prompt, $0.ChatMessage>(
        'Chat',
        chat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Prompt.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Collection, $0.ChatMessages>(
        'GetChatMessages',
        getChatMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Collection.fromBuffer(value),
        ($0.ChatMessages value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MessageID, $0.ChatMessage>(
        'GetChatMessage',
        getChatMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MessageID.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DocumentFilter, $0.Documents>(
        'ListDocuments',
        listDocuments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DocumentFilter.fromBuffer(value),
        ($0.Documents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Document, $0.IndexProgress>(
        'IndexDocument',
        indexDocument_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Document.fromBuffer(value),
        ($0.IndexProgress value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Document, $1.Empty>(
        'DeleteDocument',
        deleteDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Document.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Document, $1.Empty>(
        'UpdateDocument',
        updateDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Document.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Collections>(
        'GetCollections',
        getCollections_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Collections value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Collection, $1.Empty>(
        'CreateCollection',
        createCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Collection.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Collection, $1.Empty>(
        'UpdateCollection',
        updateCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Collection.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Collection, $1.Empty>(
        'DeleteCollection',
        deleteCollection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Collection.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ModelUsages>(
        'GetModelUsages',
        getModelUsages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ModelUsages value) => value.writeToBuffer()));
  }

  $async.Future<$0.ChatMessage> chat_Pre($grpc.ServiceCall call, $async.Future<$0.Prompt> request) async {
    return chat(call, await request);
  }

  $async.Future<$0.ChatMessages> getChatMessages_Pre($grpc.ServiceCall call, $async.Future<$0.Collection> request) async {
    return getChatMessages(call, await request);
  }

  $async.Future<$0.ChatMessage> getChatMessage_Pre($grpc.ServiceCall call, $async.Future<$0.MessageID> request) async {
    return getChatMessage(call, await request);
  }

  $async.Future<$0.Documents> listDocuments_Pre($grpc.ServiceCall call, $async.Future<$0.DocumentFilter> request) async {
    return listDocuments(call, await request);
  }

  $async.Stream<$0.IndexProgress> indexDocument_Pre($grpc.ServiceCall call, $async.Future<$0.Document> request) async* {
    yield* indexDocument(call, await request);
  }

  $async.Future<$1.Empty> deleteDocument_Pre($grpc.ServiceCall call, $async.Future<$0.Document> request) async {
    return deleteDocument(call, await request);
  }

  $async.Future<$1.Empty> updateDocument_Pre($grpc.ServiceCall call, $async.Future<$0.Document> request) async {
    return updateDocument(call, await request);
  }

  $async.Future<$0.Collections> getCollections_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getCollections(call, await request);
  }

  $async.Future<$1.Empty> createCollection_Pre($grpc.ServiceCall call, $async.Future<$0.Collection> request) async {
    return createCollection(call, await request);
  }

  $async.Future<$1.Empty> updateCollection_Pre($grpc.ServiceCall call, $async.Future<$0.Collection> request) async {
    return updateCollection(call, await request);
  }

  $async.Future<$1.Empty> deleteCollection_Pre($grpc.ServiceCall call, $async.Future<$0.Collection> request) async {
    return deleteCollection(call, await request);
  }

  $async.Future<$0.ModelUsages> getModelUsages_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getModelUsages(call, await request);
  }

  $async.Future<$0.ChatMessage> chat($grpc.ServiceCall call, $0.Prompt request);
  $async.Future<$0.ChatMessages> getChatMessages($grpc.ServiceCall call, $0.Collection request);
  $async.Future<$0.ChatMessage> getChatMessage($grpc.ServiceCall call, $0.MessageID request);
  $async.Future<$0.Documents> listDocuments($grpc.ServiceCall call, $0.DocumentFilter request);
  $async.Stream<$0.IndexProgress> indexDocument($grpc.ServiceCall call, $0.Document request);
  $async.Future<$1.Empty> deleteDocument($grpc.ServiceCall call, $0.Document request);
  $async.Future<$1.Empty> updateDocument($grpc.ServiceCall call, $0.Document request);
  $async.Future<$0.Collections> getCollections($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> createCollection($grpc.ServiceCall call, $0.Collection request);
  $async.Future<$1.Empty> updateCollection($grpc.ServiceCall call, $0.Collection request);
  $async.Future<$1.Empty> deleteCollection($grpc.ServiceCall call, $0.Collection request);
  $async.Future<$0.ModelUsages> getModelUsages($grpc.ServiceCall call, $1.Empty request);
}
