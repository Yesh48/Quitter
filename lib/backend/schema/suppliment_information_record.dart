import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'suppliment_information_record.g.dart';

abstract class SupplimentInformationRecord
    implements
        Built<SupplimentInformationRecord, SupplimentInformationRecordBuilder> {
  static Serializer<SupplimentInformationRecord> get serializer =>
      _$supplimentInformationRecordSerializer;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'Suppliment_name')
  String? get supplimentName;

  @BuiltValueField(wireName: 'Suppliment_overview')
  String? get supplimentOverview;

  @BuiltValueField(wireName: 'Category_Name')
  String? get categoryName;

  int? get price;

  @BuiltValueField(wireName: 'product_details')
  String? get productDetails;

  @BuiltValueField(wireName: 'shipping_options')
  String? get shippingOptions;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SupplimentInformationRecordBuilder builder) =>
      builder
        ..image = ''
        ..supplimentName = ''
        ..supplimentOverview = ''
        ..categoryName = ''
        ..price = 0
        ..productDetails = ''
        ..shippingOptions = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Suppliment_information');

  static Stream<SupplimentInformationRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SupplimentInformationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SupplimentInformationRecord._();
  factory SupplimentInformationRecord(
          [void Function(SupplimentInformationRecordBuilder) updates]) =
      _$SupplimentInformationRecord;

  static SupplimentInformationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSupplimentInformationRecordData({
  String? image,
  String? supplimentName,
  String? supplimentOverview,
  String? categoryName,
  int? price,
  String? productDetails,
  String? shippingOptions,
}) {
  final firestoreData = serializers.toFirestore(
    SupplimentInformationRecord.serializer,
    SupplimentInformationRecord(
      (s) => s
        ..image = image
        ..supplimentName = supplimentName
        ..supplimentOverview = supplimentOverview
        ..categoryName = categoryName
        ..price = price
        ..productDetails = productDetails
        ..shippingOptions = shippingOptions,
    ),
  );

  return firestoreData;
}
