// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_with_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyProductWithId _$MyProductWithIdFromJson(Map<String, dynamic> json) {
  return _MyProductWithId.fromJson(json);
}

/// @nodoc
mixin _$MyProductWithId {
  String get id => throw _privateConstructorUsedError;
  MyProduct get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProductWithIdCopyWith<MyProductWithId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductWithIdCopyWith<$Res> {
  factory $MyProductWithIdCopyWith(
          MyProductWithId value, $Res Function(MyProductWithId) then) =
      _$MyProductWithIdCopyWithImpl<$Res, MyProductWithId>;
  @useResult
  $Res call({String id, MyProduct product});

  $MyProductCopyWith<$Res> get product;
}

/// @nodoc
class _$MyProductWithIdCopyWithImpl<$Res, $Val extends MyProductWithId>
    implements $MyProductWithIdCopyWith<$Res> {
  _$MyProductWithIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as MyProduct,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyProductCopyWith<$Res> get product {
    return $MyProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyProductWithIdCopyWith<$Res>
    implements $MyProductWithIdCopyWith<$Res> {
  factory _$$_MyProductWithIdCopyWith(
          _$_MyProductWithId value, $Res Function(_$_MyProductWithId) then) =
      __$$_MyProductWithIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, MyProduct product});

  @override
  $MyProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_MyProductWithIdCopyWithImpl<$Res>
    extends _$MyProductWithIdCopyWithImpl<$Res, _$_MyProductWithId>
    implements _$$_MyProductWithIdCopyWith<$Res> {
  __$$_MyProductWithIdCopyWithImpl(
      _$_MyProductWithId _value, $Res Function(_$_MyProductWithId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
  }) {
    return _then(_$_MyProductWithId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as MyProduct,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MyProductWithId implements _MyProductWithId {
  const _$_MyProductWithId({required this.id, required this.product});

  factory _$_MyProductWithId.fromJson(Map<String, dynamic> json) =>
      _$$_MyProductWithIdFromJson(json);

  @override
  final String id;
  @override
  final MyProduct product;

  @override
  String toString() {
    return 'MyProductWithId(id: $id, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyProductWithId &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyProductWithIdCopyWith<_$_MyProductWithId> get copyWith =>
      __$$_MyProductWithIdCopyWithImpl<_$_MyProductWithId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyProductWithIdToJson(
      this,
    );
  }
}

abstract class _MyProductWithId implements MyProductWithId {
  const factory _MyProductWithId(
      {required final String id,
      required final MyProduct product}) = _$_MyProductWithId;

  factory _MyProductWithId.fromJson(Map<String, dynamic> json) =
      _$_MyProductWithId.fromJson;

  @override
  String get id;
  @override
  MyProduct get product;
  @override
  @JsonKey(ignore: true)
  _$$_MyProductWithIdCopyWith<_$_MyProductWithId> get copyWith =>
      throw _privateConstructorUsedError;
}
