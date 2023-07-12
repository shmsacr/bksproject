import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class MyProduct with _$MyProduct {
  @JsonSerializable(explicitToJson: true)
  const factory MyProduct(
      {required String productName,
      required String macAddres,
      required List<String> productPictures,
      required String productType}) = _MyProduct;
  factory MyProduct.fromJson(Map<String, Object?> json) =>
      _$MyProductFromJson(json);
}
