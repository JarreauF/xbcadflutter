import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_event_record.g.dart';

abstract class PostEventRecord
    implements Built<PostEventRecord, PostEventRecordBuilder> {
  static Serializer<PostEventRecord> get serializer =>
      _$postEventRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'img_url')
  String get imgUrl;

  @nullable
  @BuiltValueField(wireName: 'event_detail')
  String get eventDetail;

  @nullable
  @BuiltValueField(wireName: 'event_location')
  LatLng get eventLocation;

  @nullable
  @BuiltValueField(wireName: 'event_host')
  String get eventHost;

  @nullable
  @BuiltValueField(wireName: 'event_time')
  String get eventTime;

  @nullable
  @BuiltValueField(wireName: 'event_capacity')
  int get eventCapacity;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostEventRecordBuilder builder) => builder
    ..imgUrl = ''
    ..eventDetail = ''
    ..eventHost = ''
    ..eventTime = ''
    ..eventCapacity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post_event');

  static Stream<PostEventRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PostEventRecord._();
  factory PostEventRecord([void Function(PostEventRecordBuilder) updates]) =
      _$PostEventRecord;

  static PostEventRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPostEventRecordData({
  String imgUrl,
  String eventDetail,
  LatLng eventLocation,
  String eventHost,
  String eventTime,
  int eventCapacity,
}) =>
    serializers.toFirestore(
        PostEventRecord.serializer,
        PostEventRecord((p) => p
          ..imgUrl = imgUrl
          ..eventDetail = eventDetail
          ..eventLocation = eventLocation
          ..eventHost = eventHost
          ..eventTime = eventTime
          ..eventCapacity = eventCapacity));
