// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuizRecord> _$quizRecordSerializer = new _$QuizRecordSerializer();

class _$QuizRecordSerializer implements StructuredSerializer<QuizRecord> {
  @override
  final Iterable<Type> types = const [QuizRecord, _$QuizRecord];
  @override
  final String wireName = 'QuizRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuizRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questionss;
    if (value != null) {
      result
        ..add('Questionss')
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
  QuizRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuizRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Questionss':
          result.questionss.replace(serializers.deserialize(value,
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

class _$QuizRecord extends QuizRecord {
  @override
  final String? title;
  @override
  final BuiltList<String>? questionss;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QuizRecord([void Function(QuizRecordBuilder)? updates]) =>
      (new QuizRecordBuilder()..update(updates))._build();

  _$QuizRecord._({this.title, this.questionss, this.ffRef}) : super._();

  @override
  QuizRecord rebuild(void Function(QuizRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizRecordBuilder toBuilder() => new QuizRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizRecord &&
        title == other.title &&
        questionss == other.questionss &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, questionss.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuizRecord')
          ..add('title', title)
          ..add('questionss', questionss)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QuizRecordBuilder implements Builder<QuizRecord, QuizRecordBuilder> {
  _$QuizRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<String>? _questionss;
  ListBuilder<String> get questionss =>
      _$this._questionss ??= new ListBuilder<String>();
  set questionss(ListBuilder<String>? questionss) =>
      _$this._questionss = questionss;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QuizRecordBuilder() {
    QuizRecord._initializeBuilder(this);
  }

  QuizRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _questionss = $v.questionss?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuizRecord;
  }

  @override
  void update(void Function(QuizRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuizRecord build() => _build();

  _$QuizRecord _build() {
    _$QuizRecord _$result;
    try {
      _$result = _$v ??
          new _$QuizRecord._(
              title: title, questionss: _questionss?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questionss';
        _questionss?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuizRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
