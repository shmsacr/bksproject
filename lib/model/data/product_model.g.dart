// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyProduct _$$_MyProductFromJson(Map<String, dynamic> json) => _$_MyProduct(
      productName: json['productName'] as String,
      macAddres: json['macAddres'] as String,
      productPictures: (json['productPictures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      productType: json['productType'] as String,
    );

Map<String, dynamic> _$$_MyProductToJson(_$_MyProduct instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'macAddres': instance.macAddres,
      'productPictures': instance.productPictures,
      'productType': instance.productType,
    };
