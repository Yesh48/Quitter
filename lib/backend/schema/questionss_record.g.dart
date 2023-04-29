// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionss_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionssRecord> _$questionssRecordSerializer =
    new _$QuestionssRecordSerializer();

class _$QuestionssRecordSerializer
    implements StructuredSerializer<QuestionssRecord> {
  @override
  final Iterable<Type> types = const [QuestionssRecord, _$QuestionssRecord];
  @override
  final String wireName = 'QuestionssRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuestionssRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.option;
    if (value != null) {
      result
        ..add('option')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.question;
    if (value != null) {
      result
        ..add('Question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.correctAnswer;
    if (value != null) {
      result
        ..add('Correct_answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.explaination;
    if (value != null) {
      result
        ..add('explaination')
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
  QuestionssRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionssRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'option':
          result.option.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Correct_answer':
          result.correctAnswer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'explaination':
          result.explaination = serializers.deserialize(value,
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

class _$QuestionssRecord extends QuestionssRecord {
  @override
  final BuiltList<String>? option;
  @override
  final String? question;
  @override
  final String? correctAnswer;
  @override
  final String? explaination;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QuestionssRecord(
          [void Function(QuestionssRecordBuilder)? updates]) =>
      (new QuestionssRecordBuilder()..update(updates))._build();

  _$QuestionssRecord._(
      {this.option,
      this.question,
      this.correctAnswer,
      this.explaination,
      this.ffRef})
      : super._();

  @override
  QuestionssRecord rebuild(void Function(QuestionssRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionssRecordBuilder toBuilder() =>
      new QuestionssRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionssRecord &&
        option == other.option &&
        question == other.question &&
        correctAnswer == other.correctAnswer &&
        explaination == other.explaination &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, option.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jc(_$hash, explaination.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionssRecord')
          ..add('option', option)
          ..add('question', question)
          ..add('correctAnswer', correctAnswer)
          ..add('explaination', explaination)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QuestionssRecordBuilder
    implements Builder<QuestionssRecord, QuestionssRecordBuilder> {
  _$QuestionssRecord? _$v;

  ListBuilder<String>? _option;
  ListBuilder<String> get option =>
      _$this._option ??= new ListBuilder<String>();
  set option(ListBuilder<String>? option) => _$this._option = option;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _correctAnswer;
  String? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(String? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  String? _explaination;
  String? get explaination => _$this._explaination;
  set explaination(String? explaination) => _$this._explaination = explaination;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QuestionssRecordBuilder() {
    QuestionssRecord._initializeBuilder(this);
  }

  QuestionssRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _option = $v.option?.toBuilder();
      _question = $v.question;
      _correctAnswer = $v.correctAnswer;
      _explaination = $v.explaination;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionssRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionssRecord;
  }

  @override
  void update(void Function(QuestionssRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionssRecord build() => _build();

  _$QuestionssRecord _build() {
    _$QuestionssRecord _$result;
    try {
      _$result = _$v ??
          new _$QuestionssRecord._(
              option: _option?.build(),
              question: question,
              correctAnswer: correctAnswer,
              explaination: explaination,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'option';
        _option?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionssRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
