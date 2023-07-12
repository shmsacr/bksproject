// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyProduct _$MyProductFromJson(Map<String, dynamic> json) {
  return _MyProduct.fromJson(json);
}

/// @nodoc
mixin _$MyProduct {
  String get productName => throw _privateConstructorUsedError;
  String get macAddres => throw _privateConstructorUsedError;
  List<String> get productPictures => throw _privateConstructorUsedError;
  String get productType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProductCopyWith<MyProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductCopyWith<$Res> {
  factory $MyProductCopyWith(MyProduct value, $Res Function(MyProduct) then) =
      _$MyProductCopyWithImpl<$Res, MyProduct>;
  @useResult
  $Res call(
      {String productName,
      String macAddres,
      List<String> productPictures,
      String productType});
}

/// @nodoc
class _$MyProductCopyWithImpl<$Res, $Val extends MyProduct>
    implements $MyProductCopyWith<$Res> {
  _$MyProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? macAddres = null,
    Object? productPictures = null,
    Object? productType = null,
  }) {
    return _then(_value.copyWith(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      macAddres: null == macAddres
          ? _value.macAddres
          : macAddres // ignore: cast_nullable_to_non_nullable
              as String,
      productPictures: null == productPictures
          ? _value.productPictures
          : productPictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyProductCopyWith<$Res> implements $MyProductCopyWith<$Res> {
  factory _$$_MyProductCopyWith(
          _$_MyProduct value, $Res Function(_$_MyProduct) then) =
      __$$_MyProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productName,
      String macAddres,
      List<String> productPictures,
      String productType});
}

/// @nodoc
class __$$_MyProductCopyWithImpl<$Res>
    extends _$MyProductCopyWithImpl<$Res, _$_MyProduct>
    implements _$$_MyProductCopyWith<$Res> {
  __$$_MyProductCopyWithImpl(
      _$_MyProduct _value, $Res Function(_$_MyProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? macAddres = null,
    Object? productPictures = null,
    Object? productType = null,
  }) {
    return _then(_$_MyProduct(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      macAddres: null == macAddres
          ? _value.macAddres
          : macAddres // ignore: cast_nullable_to_non_nullable
              as String,
      productPictures: null == productPictures
          ? _value._productPictures
          : productPictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MyProduct implements _MyProduct {
  const _$_MyProduct(
      {required this.productName,
      required this.macAddres,
      required final List<String> productPictures,
      required this.productType})
      : _productPictures = productPictures;

  factory _$_MyProduct.fromJson(Map<String, dynamic> json) =>
      _$$_MyProductFromJson(json);

  @override
  final String productName;
  @override
  final String macAddres;
  final List<String> _productPictures;
  @override
  List<String> get productPictures {
    if (_productPictures is EqualUnmodifiableListView) return _productPictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productPictures);
  }

  @override
  final String productType;

  @override
  String toString() {
    return 'MyProduct(productName: $productName, macAddres: $macAddres, productPictures: $productPictures, productType: $productType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyProduct &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.macAddres, macAddres) ||
                other.macAddres == macAddres) &&
            const DeepCollectionEquality()
                .equals(other._productPictures, _productPictures) &&
            (identical(other.productType, productType) ||
                other.productType == productType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productName, macAddres,
      const DeepCollectionEquality().hash(_productPictures), productType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyProductCopyWith<_$_MyProduct> get copyWith =>
      __$$_MyProductCopyWithImpl<_$_MyProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyProductToJson(
      this,
    );
  }
}

abstract class _MyProduct implements MyProduct {
  const factory _MyProduct(
      {required final String productName,
      required final String macAddres,
      required final List<String> productPictures,
      required final String productType}) = _$_MyProduct;

  factory _MyProduct.fromJson(Map<String, dynamic> json) =
      _$_MyProduct.fromJson;

  @override
  String get productName;
  @override
  String get macAddres;
  @override
  List<String> get productPictures;
  @override
  String get productType;
  @override
  @JsonKey(ignore: true)
  _$$_MyProductCopyWith<_$_MyProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
