import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'questionss_record.g.dart';

abstract class QuestionssRecord
    implements Built<QuestionssRecord, QuestionssRecordBuilder> {
  static Serializer<QuestionssRecord> get serializer =>
      _$questionssRecordSerializer;

  BuiltList<String>? get option;

  @BuiltValueField(wireName: 'Question')
  String? get question;

  @BuiltValueField(wireName: 'Correct_answer')
  String? get correctAnswer;

  String? get explaination;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(QuestionssRecordBuilder builder) => builder
    ..option = ListBuilder()
    ..question = ''
    ..correctAnswer = ''
    ..explaination = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('questionss')
          : FirebaseFirestore.instance.collectionGroup('questionss');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('questionss').doc();

  static Stream<QuestionssRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QuestionssRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QuestionssRecord._();
  factory QuestionssRecord([void Function(QuestionssRecordBuilder) updates]) =
      _$QuestionssRecord;

  static QuestionssRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQuestionssRecordData({
  String? question,
  String? correctAnswer,
  String? explaination,
}) {
  final firestoreData = serializers.toFirestore(
    QuestionssRecord.serializer,
    QuestionssRecord(
      (q) => q
        ..option = null
        ..question = question
        ..correctAnswer = correctAnswer
        ..explaination = explaination,
    ),
  );

  return firestoreData;
}
