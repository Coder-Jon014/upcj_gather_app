import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'church_service_record.g.dart';

abstract class ChurchServiceRecord
    implements Built<ChurchServiceRecord, ChurchServiceRecordBuilder> {
  static Serializer<ChurchServiceRecord> get serializer =>
      _$churchServiceRecordSerializer;

  String? get title;

  @BuiltValueField(wireName: 'service_date')
  DateTime? get serviceDate;

  @BuiltValueField(wireName: 'service_capacity')
  int? get serviceCapacity;

  @BuiltValueField(wireName: 'infected_status')
  bool? get infectedStatus;

  @BuiltValueField(wireName: 'available_space')
  int? get availableSpace;

  @BuiltValueField(wireName: 'members_attending')
  BuiltList<String>? get membersAttending;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChurchServiceRecordBuilder builder) => builder
    ..title = ''
    ..serviceCapacity = 0
    ..infectedStatus = false
    ..availableSpace = 0
    ..membersAttending = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('church_service');

  static Stream<ChurchServiceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChurchServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChurchServiceRecord._();
  factory ChurchServiceRecord(
          [void Function(ChurchServiceRecordBuilder) updates]) =
      _$ChurchServiceRecord;

  static ChurchServiceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChurchServiceRecordData({
  String? title,
  DateTime? serviceDate,
  int? serviceCapacity,
  bool? infectedStatus,
  int? availableSpace,
}) {
  final firestoreData = serializers.toFirestore(
    ChurchServiceRecord.serializer,
    ChurchServiceRecord(
      (c) => c
        ..title = title
        ..serviceDate = serviceDate
        ..serviceCapacity = serviceCapacity
        ..infectedStatus = infectedStatus
        ..availableSpace = availableSpace
        ..membersAttending = null,
    ),
  );

  return firestoreData;
}
