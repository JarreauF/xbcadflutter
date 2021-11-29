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
  @BuiltValueField(wireName: 'event_name')
  String get eventName;

  @nullable
  @BuiltValueField(wireName: 'event_location')
  String get eventLocation;

  @nullable
  @BuiltValueField(wireName: 'event_host')
  String get eventHost;

  @nullable
  @BuiltValueField(wireName: 'event_start_time')
  String get eventStartTime;

  @nullable
  @BuiltValueField(wireName: 'event_end_time')
  String get eventEndTime;

  @nullable
  @BuiltValueField(wireName: 'event_capacity')
  int get eventCapacity;

  @nullable
  @BuiltValueField(wireName: 'event_description')
  String get eventDescription;

  @nullable
  @BuiltValueField(wireName: 'event_category')
  String get eventCategory;

  @nullable
  @BuiltValueField(wireName: 'img_url')
  String get imgUrl;

  @nullable
  String get admin;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostEventRecordBuilder builder) => builder
    ..eventName = ''
    ..eventLocation = ''
    ..eventHost = ''
    ..eventStartTime = ''
    ..eventEndTime = ''
    ..eventCapacity = 0
    ..eventDescription = ''
    ..eventCategory = ''
    ..imgUrl = ''
    ..admin = '';

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
  String eventName,
  String eventLocation,
  String eventHost,
  String eventStartTime,
  String eventEndTime,
  int eventCapacity,
  String eventDescription,
  String eventCategory,
  String imgUrl,
  String admin,
}) =>
    serializers.toFirestore(
        PostEventRecord.serializer,
        PostEventRecord((p) => p
          ..eventName = eventName
          ..eventLocation = eventLocation
          ..eventHost = eventHost
          ..eventStartTime = eventStartTime
          ..eventEndTime = eventEndTime
          ..eventCapacity = eventCapacity
          ..eventDescription = eventDescription
          ..eventCategory = eventCategory
          ..imgUrl = imgUrl
          ..admin = admin));
