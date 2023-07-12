// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_with_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyProductWithId _$$_MyProductWithIdFromJson(Map<String, dynamic> json) =>
    _$_MyProductWithId(
      id: json['id'] as String,
      product: MyProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MyProductWithIdToJson(_$_MyProductWithId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product.toJson(),
    };
