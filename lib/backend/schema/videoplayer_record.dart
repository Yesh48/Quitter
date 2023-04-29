import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videoplayer_record.g.dart';

abstract class VideoplayerRecord
    implements Built<VideoplayerRecord, VideoplayerRecordBuilder> {
  static Serializer<VideoplayerRecord> get serializer =>
      _$videoplayerRecordSerializer;

  @BuiltValueField(wireName: 'Videolink')
  String? get videolink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideoplayerRecordBuilder builder) =>
      builder..videolink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Videoplayer');

  static Stream<VideoplayerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideoplayerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideoplayerRecord._();
  factory VideoplayerRecord([void Function(VideoplayerRecordBuilder) updates]) =
      _$VideoplayerRecord;

  static VideoplayerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideoplayerRecordData({
  String? videolink,
}) {
  final firestoreData = serializers.toFirestore(
    VideoplayerRecord.serializer,
    VideoplayerRecord(
      (v) => v..videolink = videolink,
    ),
  );

  return firestoreData;
}
