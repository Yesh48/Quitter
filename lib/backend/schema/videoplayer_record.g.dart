// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videoplayer_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoplayerRecord> _$videoplayerRecordSerializer =
    new _$VideoplayerRecordSerializer();

class _$VideoplayerRecordSerializer
    implements StructuredSerializer<VideoplayerRecord> {
  @override
  final Iterable<Type> types = const [VideoplayerRecord, _$VideoplayerRecord];
  @override
  final String wireName = 'VideoplayerRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideoplayerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.videolink;
    if (value != null) {
      result
        ..add('Videolink')
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
  VideoplayerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoplayerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Videolink':
          result.videolink = serializers.deserialize(value,
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

class _$VideoplayerRecord extends VideoplayerRecord {
  @override
  final String? videolink;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideoplayerRecord(
          [void Function(VideoplayerRecordBuilder)? updates]) =>
      (new VideoplayerRecordBuilder()..update(updates))._build();

  _$VideoplayerRecord._({this.videolink, this.ffRef}) : super._();

  @override
  VideoplayerRecord rebuild(void Function(VideoplayerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoplayerRecordBuilder toBuilder() =>
      new VideoplayerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoplayerRecord &&
        videolink == other.videolink &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, videolink.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoplayerRecord')
          ..add('videolink', videolink)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideoplayerRecordBuilder
    implements Builder<VideoplayerRecord, VideoplayerRecordBuilder> {
  _$VideoplayerRecord? _$v;

  String? _videolink;
  String? get videolink => _$this._videolink;
  set videolink(String? videolink) => _$this._videolink = videolink;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideoplayerRecordBuilder() {
    VideoplayerRecord._initializeBuilder(this);
  }

  VideoplayerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _videolink = $v.videolink;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoplayerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoplayerRecord;
  }

  @override
  void update(void Function(VideoplayerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoplayerRecord build() => _build();

  _$VideoplayerRecord _build() {
    final _$result =
        _$v ?? new _$VideoplayerRecord._(videolink: videolink, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
