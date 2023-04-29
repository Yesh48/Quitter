// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TasksRecord> _$tasksRecordSerializer = new _$TasksRecordSerializer();

class _$TasksRecordSerializer implements StructuredSerializer<TasksRecord> {
  @override
  final Iterable<Type> types = const [TasksRecord, _$TasksRecord];
  @override
  final String wireName = 'TasksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TasksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.taskImage;
    if (value != null) {
      result
        ..add('TaskImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taskName;
    if (value != null) {
      result
        ..add('TaskName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taskDescription;
    if (value != null) {
      result
        ..add('TaskDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deadline;
    if (value != null) {
      result
        ..add('Deadline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  TasksRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TasksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'TaskImage':
          result.taskImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TaskName':
          result.taskName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TaskDescription':
          result.taskDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Deadline':
          result.deadline = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$TasksRecord extends TasksRecord {
  @override
  final String? taskImage;
  @override
  final String? taskName;
  @override
  final String? taskDescription;
  @override
  final DateTime? deadline;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TasksRecord([void Function(TasksRecordBuilder)? updates]) =>
      (new TasksRecordBuilder()..update(updates))._build();

  _$TasksRecord._(
      {this.taskImage,
      this.taskName,
      this.taskDescription,
      this.deadline,
      this.ffRef})
      : super._();

  @override
  TasksRecord rebuild(void Function(TasksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TasksRecordBuilder toBuilder() => new TasksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TasksRecord &&
        taskImage == other.taskImage &&
        taskName == other.taskName &&
        taskDescription == other.taskDescription &&
        deadline == other.deadline &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, taskImage.hashCode);
    _$hash = $jc(_$hash, taskName.hashCode);
    _$hash = $jc(_$hash, taskDescription.hashCode);
    _$hash = $jc(_$hash, deadline.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TasksRecord')
          ..add('taskImage', taskImage)
          ..add('taskName', taskName)
          ..add('taskDescription', taskDescription)
          ..add('deadline', deadline)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TasksRecordBuilder implements Builder<TasksRecord, TasksRecordBuilder> {
  _$TasksRecord? _$v;

  String? _taskImage;
  String? get taskImage => _$this._taskImage;
  set taskImage(String? taskImage) => _$this._taskImage = taskImage;

  String? _taskName;
  String? get taskName => _$this._taskName;
  set taskName(String? taskName) => _$this._taskName = taskName;

  String? _taskDescription;
  String? get taskDescription => _$this._taskDescription;
  set taskDescription(String? taskDescription) =>
      _$this._taskDescription = taskDescription;

  DateTime? _deadline;
  DateTime? get deadline => _$this._deadline;
  set deadline(DateTime? deadline) => _$this._deadline = deadline;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TasksRecordBuilder() {
    TasksRecord._initializeBuilder(this);
  }

  TasksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _taskImage = $v.taskImage;
      _taskName = $v.taskName;
      _taskDescription = $v.taskDescription;
      _deadline = $v.deadline;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TasksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TasksRecord;
  }

  @override
  void update(void Function(TasksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TasksRecord build() => _build();

  _$TasksRecord _build() {
    final _$result = _$v ??
        new _$TasksRecord._(
            taskImage: taskImage,
            taskName: taskName,
            taskDescription: taskDescription,
            deadline: deadline,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
