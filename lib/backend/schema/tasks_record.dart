import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tasks_record.g.dart';

abstract class TasksRecord implements Built<TasksRecord, TasksRecordBuilder> {
  static Serializer<TasksRecord> get serializer => _$tasksRecordSerializer;

  @BuiltValueField(wireName: 'TaskImage')
  String? get taskImage;

  @BuiltValueField(wireName: 'TaskName')
  String? get taskName;

  @BuiltValueField(wireName: 'TaskDescription')
  String? get taskDescription;

  @BuiltValueField(wireName: 'Deadline')
  DateTime? get deadline;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TasksRecordBuilder builder) => builder
    ..taskImage = ''
    ..taskName = ''
    ..taskDescription = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TasksRecord._();
  factory TasksRecord([void Function(TasksRecordBuilder) updates]) =
      _$TasksRecord;

  static TasksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTasksRecordData({
  String? taskImage,
  String? taskName,
  String? taskDescription,
  DateTime? deadline,
}) {
  final firestoreData = serializers.toFirestore(
    TasksRecord.serializer,
    TasksRecord(
      (t) => t
        ..taskImage = taskImage
        ..taskName = taskName
        ..taskDescription = taskDescription
        ..deadline = deadline,
    ),
  );

  return firestoreData;
}
