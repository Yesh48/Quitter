import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quiz_record.g.dart';

abstract class QuizRecord implements Built<QuizRecord, QuizRecordBuilder> {
  static Serializer<QuizRecord> get serializer => _$quizRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Questionss')
  BuiltList<String>? get questionss;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(QuizRecordBuilder builder) => builder
    ..title = ''
    ..questionss = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quiz');

  static Stream<QuizRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QuizRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QuizRecord._();
  factory QuizRecord([void Function(QuizRecordBuilder) updates]) = _$QuizRecord;

  static QuizRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQuizRecordData({
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    QuizRecord.serializer,
    QuizRecord(
      (q) => q
        ..title = title
        ..questionss = null,
    ),
  );

  return firestoreData;
}
