//
//  Generated code. Do not modify.
//  source: chat_service.proto
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

import 'chat_service.pb.dart' as $3;
import 'collection_service.pb.dart' as $2;
import 'google/protobuf/empty.pb.dart' as $0;

export 'chat_service.pb.dart';

@$pb.GrpcServiceName('chatbot.chat.v5.ChatService')
class ChatServiceClient extends $grpc.Client {
  static final _$postMessage = $grpc.ClientMethod<$3.Prompt, $3.Message>(
      '/chatbot.chat.v5.ChatService/PostMessage',
      ($3.Prompt value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Message.fromBuffer(value));
  static final _$getThread = $grpc.ClientMethod<$3.ThreadID, $3.Thread>(
      '/chatbot.chat.v5.ChatService/GetThread',
      ($3.ThreadID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Thread.fromBuffer(value));
  static final _$listThreadIDs = $grpc.ClientMethod<$2.Collection, $3.ThreadIDs>(
      '/chatbot.chat.v5.ChatService/ListThreadIDs',
      ($2.Collection value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ThreadIDs.fromBuffer(value));
  static final _$deleteThread = $grpc.ClientMethod<$3.ThreadID, $0.Empty>(
      '/chatbot.chat.v5.ChatService/DeleteThread',
      ($3.ThreadID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$deleteMessageFromThread = $grpc.ClientMethod<$3.MessageID, $0.Empty>(
      '/chatbot.chat.v5.ChatService/DeleteMessageFromThread',
      ($3.MessageID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$completion = $grpc.ClientMethod<$3.CompletionRequest, $3.CompletionResponse>(
      '/chatbot.chat.v5.ChatService/Completion',
      ($3.CompletionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CompletionResponse.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.Message> postMessage($3.Prompt request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postMessage, request, options: options);
  }

  $grpc.ResponseFuture<$3.Thread> getThread($3.ThreadID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getThread, request, options: options);
  }

  $grpc.ResponseFuture<$3.ThreadIDs> listThreadIDs($2.Collection request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listThreadIDs, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteThread($3.ThreadID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteThread, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteMessageFromThread($3.MessageID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMessageFromThread, request, options: options);
  }

  $grpc.ResponseFuture<$3.CompletionResponse> completion($3.CompletionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completion, request, options: options);
  }
}

@$pb.GrpcServiceName('chatbot.chat.v5.ChatService')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'chatbot.chat.v5.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.Prompt, $3.Message>(
        'PostMessage',
        postMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Prompt.fromBuffer(value),
        ($3.Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ThreadID, $3.Thread>(
        'GetThread',
        getThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ThreadID.fromBuffer(value),
        ($3.Thread value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Collection, $3.ThreadIDs>(
        'ListThreadIDs',
        listThreadIDs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Collection.fromBuffer(value),
        ($3.ThreadIDs value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ThreadID, $0.Empty>(
        'DeleteThread',
        deleteThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ThreadID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.MessageID, $0.Empty>(
        'DeleteMessageFromThread',
        deleteMessageFromThread_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.MessageID.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CompletionRequest, $3.CompletionResponse>(
        'Completion',
        completion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CompletionRequest.fromBuffer(value),
        ($3.CompletionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.Message> postMessage_Pre($grpc.ServiceCall call, $async.Future<$3.Prompt> request) async {
    return postMessage(call, await request);
  }

  $async.Future<$3.Thread> getThread_Pre($grpc.ServiceCall call, $async.Future<$3.ThreadID> request) async {
    return getThread(call, await request);
  }

  $async.Future<$3.ThreadIDs> listThreadIDs_Pre($grpc.ServiceCall call, $async.Future<$2.Collection> request) async {
    return listThreadIDs(call, await request);
  }

  $async.Future<$0.Empty> deleteThread_Pre($grpc.ServiceCall call, $async.Future<$3.ThreadID> request) async {
    return deleteThread(call, await request);
  }

  $async.Future<$0.Empty> deleteMessageFromThread_Pre($grpc.ServiceCall call, $async.Future<$3.MessageID> request) async {
    return deleteMessageFromThread(call, await request);
  }

  $async.Future<$3.CompletionResponse> completion_Pre($grpc.ServiceCall call, $async.Future<$3.CompletionRequest> request) async {
    return completion(call, await request);
  }

  $async.Future<$3.Message> postMessage($grpc.ServiceCall call, $3.Prompt request);
  $async.Future<$3.Thread> getThread($grpc.ServiceCall call, $3.ThreadID request);
  $async.Future<$3.ThreadIDs> listThreadIDs($grpc.ServiceCall call, $2.Collection request);
  $async.Future<$0.Empty> deleteThread($grpc.ServiceCall call, $3.ThreadID request);
  $async.Future<$0.Empty> deleteMessageFromThread($grpc.ServiceCall call, $3.MessageID request);
  $async.Future<$3.CompletionResponse> completion($grpc.ServiceCall call, $3.CompletionRequest request);
}
