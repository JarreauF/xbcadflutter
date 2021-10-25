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
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventBookingRecordBuilder builder) => builder
    ..eventDetails = ListBuilder()
    ..seatQty = 0
    ..bookingName = ListBuilder();

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
}) =>
    serializers.toFirestore(
        EventBookingRecord.serializer,
        EventBookingRecord((e) => e
          ..eventDetails = null
          ..seatQty = seatQty
          ..bookingName = null));
