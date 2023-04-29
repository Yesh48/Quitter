import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blogs_record.g.dart';

abstract class BlogsRecord implements Built<BlogsRecord, BlogsRecordBuilder> {
  static Serializer<BlogsRecord> get serializer => _$blogsRecordSerializer;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Overview')
  String? get overview;

  String? get content;

  @BuiltValueField(wireName: 'UploadedTime')
  DateTime? get uploadedTime;

  @BuiltValueField(wireName: 'Category')
  String? get category;

  String? get location;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BlogsRecordBuilder builder) => builder
    ..image = ''
    ..title = ''
    ..overview = ''
    ..content = ''
    ..category = ''
    ..location = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Blogs');

  static Stream<BlogsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BlogsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BlogsRecord._();
  factory BlogsRecord([void Function(BlogsRecordBuilder) updates]) =
      _$BlogsRecord;

  static BlogsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBlogsRecordData({
  String? image,
  String? title,
  String? overview,
  String? content,
  DateTime? uploadedTime,
  String? category,
  String? location,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    BlogsRecord.serializer,
    BlogsRecord(
      (b) => b
        ..image = image
        ..title = title
        ..overview = overview
        ..content = content
        ..uploadedTime = uploadedTime
        ..category = category
        ..location = location
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
