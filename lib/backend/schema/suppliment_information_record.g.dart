// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suppliment_information_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SupplimentInformationRecord>
    _$supplimentInformationRecordSerializer =
    new _$SupplimentInformationRecordSerializer();

class _$SupplimentInformationRecordSerializer
    implements StructuredSerializer<SupplimentInformationRecord> {
  @override
  final Iterable<Type> types = const [
    SupplimentInformationRecord,
    _$SupplimentInformationRecord
  ];
  @override
  final String wireName = 'SupplimentInformationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SupplimentInformationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.supplimentName;
    if (value != null) {
      result
        ..add('Suppliment_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.supplimentOverview;
    if (value != null) {
      result
        ..add('Suppliment_overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryName;
    if (value != null) {
      result
        ..add('Category_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.productDetails;
    if (value != null) {
      result
        ..add('product_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shippingOptions;
    if (value != null) {
      result
        ..add('shipping_options')
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
  SupplimentInformationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SupplimentInformationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Suppliment_name':
          result.supplimentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Suppliment_overview':
          result.supplimentOverview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Category_Name':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'product_details':
          result.productDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'shipping_options':
          result.shippingOptions = serializers.deserialize(value,
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

class _$SupplimentInformationRecord extends SupplimentInformationRecord {
  @override
  final String? image;
  @override
  final String? supplimentName;
  @override
  final String? supplimentOverview;
  @override
  final String? categoryName;
  @override
  final int? price;
  @override
  final String? productDetails;
  @override
  final String? shippingOptions;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SupplimentInformationRecord(
          [void Function(SupplimentInformationRecordBuilder)? updates]) =>
      (new SupplimentInformationRecordBuilder()..update(updates))._build();

  _$SupplimentInformationRecord._(
      {this.image,
      this.supplimentName,
      this.supplimentOverview,
      this.categoryName,
      this.price,
      this.productDetails,
      this.shippingOptions,
      this.ffRef})
      : super._();

  @override
  SupplimentInformationRecord rebuild(
          void Function(SupplimentInformationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplimentInformationRecordBuilder toBuilder() =>
      new SupplimentInformationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplimentInformationRecord &&
        image == other.image &&
        supplimentName == other.supplimentName &&
        supplimentOverview == other.supplimentOverview &&
        categoryName == other.categoryName &&
        price == other.price &&
        productDetails == other.productDetails &&
        shippingOptions == other.shippingOptions &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, supplimentName.hashCode);
    _$hash = $jc(_$hash, supplimentOverview.hashCode);
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, productDetails.hashCode);
    _$hash = $jc(_$hash, shippingOptions.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplimentInformationRecord')
          ..add('image', image)
          ..add('supplimentName', supplimentName)
          ..add('supplimentOverview', supplimentOverview)
          ..add('categoryName', categoryName)
          ..add('price', price)
          ..add('productDetails', productDetails)
          ..add('shippingOptions', shippingOptions)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SupplimentInformationRecordBuilder
    implements
        Builder<SupplimentInformationRecord,
            SupplimentInformationRecordBuilder> {
  _$SupplimentInformationRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _supplimentName;
  String? get supplimentName => _$this._supplimentName;
  set supplimentName(String? supplimentName) =>
      _$this._supplimentName = supplimentName;

  String? _supplimentOverview;
  String? get supplimentOverview => _$this._supplimentOverview;
  set supplimentOverview(String? supplimentOverview) =>
      _$this._supplimentOverview = supplimentOverview;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _productDetails;
  String? get productDetails => _$this._productDetails;
  set productDetails(String? productDetails) =>
      _$this._productDetails = productDetails;

  String? _shippingOptions;
  String? get shippingOptions => _$this._shippingOptions;
  set shippingOptions(String? shippingOptions) =>
      _$this._shippingOptions = shippingOptions;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SupplimentInformationRecordBuilder() {
    SupplimentInformationRecord._initializeBuilder(this);
  }

  SupplimentInformationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _supplimentName = $v.supplimentName;
      _supplimentOverview = $v.supplimentOverview;
      _categoryName = $v.categoryName;
      _price = $v.price;
      _productDetails = $v.productDetails;
      _shippingOptions = $v.shippingOptions;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplimentInformationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupplimentInformationRecord;
  }

  @override
  void update(void Function(SupplimentInformationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplimentInformationRecord build() => _build();

  _$SupplimentInformationRecord _build() {
    final _$result = _$v ??
        new _$SupplimentInformationRecord._(
            image: image,
            supplimentName: supplimentName,
            supplimentOverview: supplimentOverview,
            categoryName: categoryName,
            price: price,
            productDetails: productDetails,
            shippingOptions: shippingOptions,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
