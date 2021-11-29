import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_booking_record.g.dart';

abstract class EventBookingRecord
    implements Built<EventBookingRecord, EventBookingRecordBuilder> {
  static Serializer<EventBookingRecord> get serializer =>
      _$eventBookingRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'event_details')
  BuiltList<DocumentReference> get eventDetails;

  @nullable
  @BuiltValueField(wireName: 'seat_qty')
  int get seatQty;

  @nullable
  @BuiltValueField(wireName: 'booking_name')
  BuiltList<DocumentReference> get bookingName;

  @nullable
  @BuiltValueField(wireName: 'event_name')
  String get eventName;

  @nullable
  @BuiltValueField(wireName: 'event_start_time')
  String get eventStartTime;

  @nullable
  @BuiltValueField(wireName: 'event_end_time')
  String get eventEndTime;

  @nullable
  @BuiltValueField(wireName: 'event_location')
  String get eventLocation;

  @nullable
  @BuiltValueField(wireName: 'User')
  String get user;

  @nullable
  @BuiltValueField(wireName: 'Ticketbooked')
  int get ticketbooked;

  @nullable
  String get admin;

  @nullable
  String get eventimage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventBookingRecordBuilder builder) => builder
    ..eventDetails = ListBuilder()
    ..seatQty = 0
    ..bookingName = ListBuilder()
    ..eventName = ''
    ..eventStartTime = ''
    ..eventEndTime = ''
    ..eventLocation = ''
    ..user = ''
    ..ticketbooked = 0
    ..admin = ''
    ..eventimage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event_booking');

  static Stream<EventBookingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventBookingRecord._();
  factory EventBookingRecord(
          [void Function(EventBookingRecordBuilder) updates]) =
      _$EventBookingRecord;

  static EventBookingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEventBookingRecordData({
  int seatQty,
  String eventName,
  String eventStartTime,
  String eventEndTime,
  String eventLocation,
  String user,
  int ticketbooked,
  String admin,
  String eventimage,
}) =>
    serializers.toFirestore(
        EventBookingRecord.serializer,
        EventBookingRecord((e) => e
          ..eventDetails = null
          ..seatQty = seatQty
          ..bookingName = null
          ..eventName = eventName
          ..eventStartTime = eventStartTime
          ..eventEndTime = eventEndTime
          ..eventLocation = eventLocation
          ..user = user
          ..ticketbooked = ticketbooked
          ..admin = admin
          ..eventimage = eventimage));
