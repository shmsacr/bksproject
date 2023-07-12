import 'package:bksproject/controller/auth_controller.dart';
import 'package:bksproject/model/data/product_model.dart' as app;
import 'package:bksproject/model/data/product_with_id.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getProductProvider =
    FutureProvider.autoDispose<List<MyProductWithId>>((ref) async {
  final querySnapshot =
      await ref.watch(fireStoreProvider).collection("products").get();

  return querySnapshot.docs.map((doc) {
    return MyProductWithId(
      id: doc.id,
      product: app.MyProduct.fromJson(doc.data()),
    );
  }).toList();
});
