// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'church_service_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChurchServiceRecord> _$churchServiceRecordSerializer =
    new _$ChurchServiceRecordSerializer();

class _$ChurchServiceRecordSerializer
    implements StructuredSerializer<ChurchServiceRecord> {
  @override
  final Iterable<Type> types = const [
    ChurchServiceRecord,
    _$ChurchServiceRecord
  ];
  @override
  final String wireName = 'ChurchServiceRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChurchServiceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceDate;
    if (value != null) {
      result
        ..add('service_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.serviceCapacity;
    if (value != null) {
      result
        ..add('service_capacity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.infectedStatus;
    if (value != null) {
      result
        ..add('infected_status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.availableSpace;
    if (value != null) {
      result
        ..add('available_space')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.membersAttending;
    if (value != null) {
      result
        ..add('members_attending')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ChurchServiceRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChurchServiceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'service_date':
          result.serviceDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'service_capacity':
          result.serviceCapacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'infected_status':
          result.infectedStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'available_space':
          result.availableSpace = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'members_attending':
          result.membersAttending.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ChurchServiceRecord extends ChurchServiceRecord {
  @override
  final String? title;
  @override
  final DateTime? serviceDate;
  @override
  final int? serviceCapacity;
  @override
  final bool? infectedStatus;
  @override
  final int? availableSpace;
  @override
  final BuiltList<String>? membersAttending;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChurchServiceRecord(
          [void Function(ChurchServiceRecordBuilder)? updates]) =>
      (new ChurchServiceRecordBuilder()..update(updates))._build();

  _$ChurchServiceRecord._(
      {this.title,
      this.serviceDate,
      this.serviceCapacity,
      this.infectedStatus,
      this.availableSpace,
      this.membersAttending,
      this.ffRef})
      : super._();

  @override
  ChurchServiceRecord rebuild(
          void Function(ChurchServiceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChurchServiceRecordBuilder toBuilder() =>
      new ChurchServiceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChurchServiceRecord &&
        title == other.title &&
        serviceDate == other.serviceDate &&
        serviceCapacity == other.serviceCapacity &&
        infectedStatus == other.infectedStatus &&
        availableSpace == other.availableSpace &&
        membersAttending == other.membersAttending &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, serviceDate.hashCode);
    _$hash = $jc(_$hash, serviceCapacity.hashCode);
    _$hash = $jc(_$hash, infectedStatus.hashCode);
    _$hash = $jc(_$hash, availableSpace.hashCode);
    _$hash = $jc(_$hash, membersAttending.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChurchServiceRecord')
          ..add('title', title)
          ..add('serviceDate', serviceDate)
          ..add('serviceCapacity', serviceCapacity)
          ..add('infectedStatus', infectedStatus)
          ..add('availableSpace', availableSpace)
          ..add('membersAttending', membersAttending)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChurchServiceRecordBuilder
    implements Builder<ChurchServiceRecord, ChurchServiceRecordBuilder> {
  _$ChurchServiceRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _serviceDate;
  DateTime? get serviceDate => _$this._serviceDate;
  set serviceDate(DateTime? serviceDate) => _$this._serviceDate = serviceDate;

  int? _serviceCapacity;
  int? get serviceCapacity => _$this._serviceCapacity;
  set serviceCapacity(int? serviceCapacity) =>
      _$this._serviceCapacity = serviceCapacity;

  bool? _infectedStatus;
  bool? get infectedStatus => _$this._infectedStatus;
  set infectedStatus(bool? infectedStatus) =>
      _$this._infectedStatus = infectedStatus;

  int? _availableSpace;
  int? get availableSpace => _$this._availableSpace;
  set availableSpace(int? availableSpace) =>
      _$this._availableSpace = availableSpace;

  ListBuilder<String>? _membersAttending;
  ListBuilder<String> get membersAttending =>
      _$this._membersAttending ??= new ListBuilder<String>();
  set membersAttending(ListBuilder<String>? membersAttending) =>
      _$this._membersAttending = membersAttending;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChurchServiceRecordBuilder() {
    ChurchServiceRecord._initializeBuilder(this);
  }

  ChurchServiceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _serviceDate = $v.serviceDate;
      _serviceCapacity = $v.serviceCapacity;
      _infectedStatus = $v.infectedStatus;
      _availableSpace = $v.availableSpace;
      _membersAttending = $v.membersAttending?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChurchServiceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChurchServiceRecord;
  }

  @override
  void update(void Function(ChurchServiceRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChurchServiceRecord build() => _build();

  _$ChurchServiceRecord _build() {
    _$ChurchServiceRecord _$result;
    try {
      _$result = _$v ??
          new _$ChurchServiceRecord._(
              title: title,
              serviceDate: serviceDate,
              serviceCapacity: serviceCapacity,
              infectedStatus: infectedStatus,
              availableSpace: availableSpace,
              membersAttending: _membersAttending?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'membersAttending';
        _membersAttending?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChurchServiceRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
