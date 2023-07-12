import 'package:bksproject/model/data/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_with_id.freezed.dart';
part 'product_with_id.g.dart';

@freezed
class MyProductWithId with _$MyProductWithId {
  @JsonSerializable(explicitToJson: true)
  const factory MyProductWithId(
      {required String id, required MyProduct product}) = _MyProductWithId;

  factory MyProductWithId.fromJson(Map<String, Object?> json) =>
      _$MyProductWithIdFromJson(json);
}
