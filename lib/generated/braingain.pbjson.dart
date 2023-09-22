//
//  Generated code. Do not modify.
//  source: braingain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use modelUsagesDescriptor instead')
const ModelUsages$json = {
  '1': 'ModelUsages',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.v1.ModelUsages.Usage', '10': 'items'},
  ],
  '3': [ModelUsages_Usage$json],
};

@$core.Deprecated('Use modelUsagesDescriptor instead')
const ModelUsages_Usage$json = {
  '1': 'Usage',
  '2': [
    {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    {'1': 'input', '3': 2, '4': 1, '5': 13, '10': 'input'},
    {'1': 'output', '3': 3, '4': 1, '5': 13, '10': 'output'},
  ],
};

/// Descriptor for `ModelUsages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelUsagesDescriptor = $convert.base64Decode(
    'CgtNb2RlbFVzYWdlcxI/CgVpdGVtcxgBIAMoCzIpLmVuZHBvaW50LmJyYWluYm9vc3QudjEuTW'
    '9kZWxVc2FnZXMuVXNhZ2VSBWl0ZW1zGksKBVVzYWdlEhQKBW1vZGVsGAEgASgJUgVtb2RlbBIU'
    'CgVpbnB1dBgCIAEoDVIFaW5wdXQSFgoGb3V0cHV0GAMgASgNUgZvdXRwdXQ=');

@$core.Deprecated('Use indexProgressDescriptor instead')
const IndexProgress$json = {
  '1': 'IndexProgress',
  '2': [
    {'1': 'totalPages', '3': 1, '4': 1, '5': 13, '10': 'totalPages'},
    {'1': 'processedPages', '3': 2, '4': 1, '5': 13, '10': 'processedPages'},
  ],
};

/// Descriptor for `IndexProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexProgressDescriptor = $convert.base64Decode(
    'Cg1JbmRleFByb2dyZXNzEh4KCnRvdGFsUGFnZXMYASABKA1SCnRvdGFsUGFnZXMSJgoOcHJvY2'
    'Vzc2VkUGFnZXMYAiABKA1SDnByb2Nlc3NlZFBhZ2Vz');

@$core.Deprecated('Use documentDescriptor instead')
const Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'filename', '3': 3, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode(
    'CghEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoCVIMY29sbG'
    'VjdGlvbklkEhoKCGZpbGVuYW1lGAMgASgJUghmaWxlbmFtZRISCgRwYXRoGAQgASgJUgRwYXRo');

@$core.Deprecated('Use collectionDescriptor instead')
const Collection$json = {
  '1': 'Collection',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Collection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDescriptor = $convert.base64Decode(
    'CgpDb2xsZWN0aW9uEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use collectionsDescriptor instead')
const Collections$json = {
  '1': 'Collections',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.v1.Collections.Collection', '10': 'items'},
  ],
  '3': [Collections_Collection$json],
};

@$core.Deprecated('Use collectionsDescriptor instead')
const Collections_Collection$json = {
  '1': 'Collection',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'documents', '3': 3, '4': 1, '5': 13, '10': 'documents'},
  ],
};

/// Descriptor for `Collections`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionsDescriptor = $convert.base64Decode(
    'CgtDb2xsZWN0aW9ucxJECgVpdGVtcxgBIAMoCzIuLmVuZHBvaW50LmJyYWluYm9vc3QudjEuQ2'
    '9sbGVjdGlvbnMuQ29sbGVjdGlvblIFaXRlbXMaTgoKQ29sbGVjdGlvbhIOCgJpZBgBIAEoCVIC'
    'aWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIcCglkb2N1bWVudHMYAyABKA1SCWRvY3VtZW50cw==');

@$core.Deprecated('Use documentFilterDescriptor instead')
const DocumentFilter$json = {
  '1': 'DocumentFilter',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'collection', '3': 2, '4': 1, '5': 9, '10': 'collection'},
  ],
};

/// Descriptor for `DocumentFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentFilterDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudEZpbHRlchIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSHgoKY29sbGVjdGlvbhgCIA'
    'EoCVIKY29sbGVjdGlvbg==');

@$core.Deprecated('Use documentsDescriptor instead')
const Documents$json = {
  '1': 'Documents',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.v1.Documents.Document', '10': 'items'},
  ],
  '3': [Documents_Document$json],
};

@$core.Deprecated('Use documentsDescriptor instead')
const Documents_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'pages', '3': 3, '4': 1, '5': 13, '10': 'pages'},
  ],
};

/// Descriptor for `Documents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentsDescriptor = $convert.base64Decode(
    'CglEb2N1bWVudHMSQAoFaXRlbXMYASADKAsyKi5lbmRwb2ludC5icmFpbmJvb3N0LnYxLkRvY3'
    'VtZW50cy5Eb2N1bWVudFIFaXRlbXMaTAoIRG9jdW1lbnQSDgoCaWQYASABKAlSAmlkEhoKCGZp'
    'bGVuYW1lGAIgASgJUghmaWxlbmFtZRIUCgVwYWdlcxgDIAEoDVIFcGFnZXM=');

@$core.Deprecated('Use promptOptionsDescriptor instead')
const PromptOptions$json = {
  '1': 'PromptOptions',
  '2': [
    {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    {'1': 'temperature', '3': 2, '4': 1, '5': 2, '10': 'temperature'},
    {'1': 'max_tokens', '3': 3, '4': 1, '5': 13, '10': 'maxTokens'},
    {'1': 'threshold', '3': 4, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'limit', '3': 5, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `PromptOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptOptionsDescriptor = $convert.base64Decode(
    'Cg1Qcm9tcHRPcHRpb25zEhQKBW1vZGVsGAEgASgJUgVtb2RlbBIgCgt0ZW1wZXJhdHVyZRgCIA'
    'EoAlILdGVtcGVyYXR1cmUSHQoKbWF4X3Rva2VucxgDIAEoDVIJbWF4VG9rZW5zEhwKCXRocmVz'
    'aG9sZBgEIAEoAlIJdGhyZXNob2xkEhQKBWxpbWl0GAUgASgNUgVsaW1pdA==');

@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = {
  '1': 'Prompt',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'collection', '3': 2, '4': 1, '5': 9, '10': 'collection'},
    {'1': 'options', '3': 3, '4': 1, '5': 11, '6': '.endpoint.brainboost.v1.PromptOptions', '10': 'options'},
    {'1': 'documents', '3': 4, '4': 3, '5': 11, '6': '.endpoint.brainboost.v1.Prompt.Document', '10': 'documents'},
  ],
  '3': [Prompt_Document$json],
};

@$core.Deprecated('Use promptDescriptor instead')
const Prompt_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'pages', '3': 3, '4': 3, '5': 13, '10': 'pages'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode(
    'CgZQcm9tcHQSFgoGcHJvbXB0GAEgASgJUgZwcm9tcHQSHgoKY29sbGVjdGlvbhgCIAEoCVIKY2'
    '9sbGVjdGlvbhI/CgdvcHRpb25zGAMgASgLMiUuZW5kcG9pbnQuYnJhaW5ib29zdC52MS5Qcm9t'
    'cHRPcHRpb25zUgdvcHRpb25zEkUKCWRvY3VtZW50cxgEIAMoCzInLmVuZHBvaW50LmJyYWluYm'
    '9vc3QudjEuUHJvbXB0LkRvY3VtZW50Uglkb2N1bWVudHMaTAoIRG9jdW1lbnQSDgoCaWQYASAB'
    'KAlSAmlkEhoKCGZpbGVuYW1lGAIgASgJUghmaWxlbmFtZRIUCgVwYWdlcxgDIAMoDVIFcGFnZX'
    'M=');

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = {
  '1': 'ChatMessage',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 11, '6': '.endpoint.brainboost.v1.Prompt', '10': 'prompt'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'documents', '3': 3, '4': 3, '5': 11, '6': '.endpoint.brainboost.v1.ChatMessage.Document', '10': 'documents'},
    {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'timestamp', '17': true},
  ],
  '3': [ChatMessage_Document$json],
  '8': [
    {'1': '_timestamp'},
  ],
};

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'pages', '3': 3, '4': 3, '5': 13, '10': 'pages'},
    {'1': 'scores', '3': 4, '4': 3, '5': 2, '10': 'scores'},
  ],
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode(
    'CgtDaGF0TWVzc2FnZRI2CgZwcm9tcHQYASABKAsyHi5lbmRwb2ludC5icmFpbmJvb3N0LnYxLl'
    'Byb21wdFIGcHJvbXB0EhIKBHRleHQYAiABKAlSBHRleHQSSgoJZG9jdW1lbnRzGAMgAygLMiwu'
    'ZW5kcG9pbnQuYnJhaW5ib29zdC52MS5DaGF0TWVzc2FnZS5Eb2N1bWVudFIJZG9jdW1lbnRzEj'
    '0KCXRpbWVzdGFtcBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIJdGltZXN0'
    'YW1wiAEBGmQKCERvY3VtZW50Eg4KAmlkGAEgASgJUgJpZBIaCghmaWxlbmFtZRgCIAEoCVIIZm'
    'lsZW5hbWUSFAoFcGFnZXMYAyADKA1SBXBhZ2VzEhYKBnNjb3JlcxgEIAMoAlIGc2NvcmVzQgwK'
    'Cl90aW1lc3RhbXA=');

@$core.Deprecated('Use messageIDDescriptor instead')
const MessageID$json = {
  '1': 'MessageID',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `MessageID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIDDescriptor = $convert.base64Decode(
    'CglNZXNzYWdlSUQSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use chatMessagesDescriptor instead')
const ChatMessages$json = {
  '1': 'ChatMessages',
  '2': [
    {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
  ],
};

/// Descriptor for `ChatMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessagesDescriptor = $convert.base64Decode(
    'CgxDaGF0TWVzc2FnZXMSEAoDaWRzGAEgAygJUgNpZHM=');

