//
//  Generated code. Do not modify.
//  source: collection_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.chatbot.collections.v3.Collection', '10': 'items'},
  ],
};

/// Descriptor for `Collections`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionsDescriptor = $convert.base64Decode(
    'CgtDb2xsZWN0aW9ucxI4CgVpdGVtcxgBIAMoCzIiLmNoYXRib3QuY29sbGVjdGlvbnMudjMuQ2'
    '9sbGVjdGlvblIFaXRlbXM=');

