import 'dart:async';

import 'package:built_value/built_value.dart';

import 'serializers.dart';

part 'notifications_record.g.dart';

abstract class NotificationsRecord
    implements Built<NotificationsRecord, NotificationsRecordBuilder> {
  static Serializer<NotificationsRecord> get serializer =>
      _$notificationsRecordSerializer;

  String? get notificationInfo;

  DateTime? get createdDate;

  String? get notificationPhoto;

  String? get notificationTitle;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotificationsRecordBuilder builder) => builder
    ..notificationInfo = ''
    ..notificationPhoto = ''
    ..notificationTitle = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificationsRecord._();
  factory NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =
      _$NotificationsRecord;

  static NotificationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificationsRecordData({
  String? notificationInfo,
  DateTime? createdDate,
  String? notificationPhoto,
  String? notificationTitle,
}) {
  final firestoreData = serializers.toFirestore(
    NotificationsRecord.serializer,
    NotificationsRecord(
      (n) => n
        ..notificationInfo = notificationInfo
        ..createdDate = createdDate
        ..notificationPhoto = notificationPhoto
        ..notificationTitle = notificationTitle,
    ),
  );

  return firestoreData;
}
