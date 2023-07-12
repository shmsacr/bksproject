import 'package:bksproject/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getProduct = ref.watch(getProductProvider);
    return getProduct.when(
        data: (data) => Scaffold(
              appBar: AppBar(
                title: const Center(child: Text("ÜRÜNLER")),
              ),
              body: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                              leading: SizedBox(
                            width: double.infinity,
                            child: Image.network(
                              data[index].product.productPictures.first,
                              fit: BoxFit.cover,
                            ),
                          ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
        error: (error, _) => Text(error.toString()),
        loading: () => CircularProgressIndicator());
  }
}
