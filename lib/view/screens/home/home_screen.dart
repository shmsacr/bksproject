import 'package:bksproject/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../DetailScreen/detail_screen.dart';

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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    productWithId: data[index],
                                  )));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 200,
                              height: 200,
                              child: Image.network(
                                  data[index].product.productPictures.first),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data[index].product.productName),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(data[index].product.macAddres)
                              ],
                            ))
                          ],
                        ),
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
