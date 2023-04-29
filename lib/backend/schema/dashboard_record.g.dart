// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DashboardRecord> _$dashboardRecordSerializer =
    new _$DashboardRecordSerializer();

class _$DashboardRecordSerializer
    implements StructuredSerializer<DashboardRecord> {
  @override
  final Iterable<Type> types = const [DashboardRecord, _$DashboardRecord];
  @override
  final String wireName = 'DashboardRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DashboardRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tileName;
    if (value != null) {
      result
        ..add('Tile_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tileDescription;
    if (value != null) {
      result
        ..add('Tile_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tileImage;
    if (value != null) {
      result
        ..add('Tile_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  DashboardRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DashboardRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Tile_name':
          result.tileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Tile_description':
          result.tileDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Tile_image':
          result.tileImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$DashboardRecord extends DashboardRecord {
  @override
  final String? tileName;
  @override
  final double? value;
  @override
  final String? tileDescription;
  @override
  final String? tileImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DashboardRecord([void Function(DashboardRecordBuilder)? updates]) =>
      (new DashboardRecordBuilder()..update(updates))._build();

  _$DashboardRecord._(
      {this.tileName,
      this.value,
      this.tileDescription,
      this.tileImage,
      this.ffRef})
      : super._();

  @override
  DashboardRecord rebuild(void Function(DashboardRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardRecordBuilder toBuilder() =>
      new DashboardRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardRecord &&
        tileName == other.tileName &&
        value == other.value &&
        tileDescription == other.tileDescription &&
        tileImage == other.tileImage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tileName.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, tileDescription.hashCode);
    _$hash = $jc(_$hash, tileImage.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardRecord')
          ..add('tileName', tileName)
          ..add('value', value)
          ..add('tileDescription', tileDescription)
          ..add('tileImage', tileImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DashboardRecordBuilder
    implements Builder<DashboardRecord, DashboardRecordBuilder> {
  _$DashboardRecord? _$v;

  String? _tileName;
  String? get tileName => _$this._tileName;
  set tileName(String? tileName) => _$this._tileName = tileName;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _tileDescription;
  String? get tileDescription => _$this._tileDescription;
  set tileDescription(String? tileDescription) =>
      _$this._tileDescription = tileDescription;

  String? _tileImage;
  String? get tileImage => _$this._tileImage;
  set tileImage(String? tileImage) => _$this._tileImage = tileImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DashboardRecordBuilder() {
    DashboardRecord._initializeBuilder(this);
  }

  DashboardRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tileName = $v.tileName;
      _value = $v.value;
      _tileDescription = $v.tileDescription;
      _tileImage = $v.tileImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DashboardRecord;
  }

  @override
  void update(void Function(DashboardRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardRecord build() => _build();

  _$DashboardRecord _build() {
    final _$result = _$v ??
        new _$DashboardRecord._(
            tileName: tileName,
            value: value,
            tileDescription: tileDescription,
            tileImage: tileImage,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
