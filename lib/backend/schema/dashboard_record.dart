import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dashboard_record.g.dart';

abstract class DashboardRecord
    implements Built<DashboardRecord, DashboardRecordBuilder> {
  static Serializer<DashboardRecord> get serializer =>
      _$dashboardRecordSerializer;

  @BuiltValueField(wireName: 'Tile_name')
  String? get tileName;

  @BuiltValueField(wireName: 'Value')
  double? get value;

  @BuiltValueField(wireName: 'Tile_description')
  String? get tileDescription;

  @BuiltValueField(wireName: 'Tile_image')
  String? get tileImage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DashboardRecordBuilder builder) => builder
    ..tileName = ''
    ..value = 0.0
    ..tileDescription = ''
    ..tileImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Dashboard');

  static Stream<DashboardRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DashboardRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DashboardRecord._();
  factory DashboardRecord([void Function(DashboardRecordBuilder) updates]) =
      _$DashboardRecord;

  static DashboardRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDashboardRecordData({
  String? tileName,
  double? value,
  String? tileDescription,
  String? tileImage,
}) {
  final firestoreData = serializers.toFirestore(
    DashboardRecord.serializer,
    DashboardRecord(
      (d) => d
        ..tileName = tileName
        ..value = value
        ..tileDescription = tileDescription
        ..tileImage = tileImage,
    ),
  );

  return firestoreData;
}
