import 'package:bksproject/model/data/product_with_id.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controller/product_controller.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({Key? key, required this.productWithId}) : super(key: key);
  final MyProductWithId productWithId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bulbTurn = ref.watch(bulbTurnProvider);
    final overIndex = ref.watch(overIndexProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Ayarlar"),
      ),
      body: Column(
        children: [
          Text(
            productWithId.product.productName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Card(
                  child: buildSizedBox(bulbTurn, overIndex),
                ),
              ),
            ),
          ),
          if (productWithId.product.productType == "lamba")
            Expanded(
              flex: 1,
              child: IconButton(
                iconSize: 50,
                icon:
                    Icon(bulbTurn ? Icons.lightbulb_outline : Icons.lightbulb),
                tooltip: 'Air it',
                onPressed: () {
                  ref.read(bulbTurnProvider.notifier).state = !bulbTurn;
                  print(bulbTurn);
                },
              ),
            ),
          if (productWithId.product.productType == "firin")
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sıcaklık Değeri: ${overIndex.round()}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 100,
                    child: Slider(
                      divisions: 6,
                      value: overIndex,
                      label: overIndex.toString(),
                      max: 300,
                      onChanged: (double value) {
                        ref.read(overIndexProvider.notifier).state = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  SizedBox buildSizedBox(bool bulbTurn, double overIndex) {
    if (productWithId.product.productType == "lamba") {
      return SizedBox(
        width: 300,
        height: 300,
        child: Image.network(
          bulbTurn
              ? productWithId.product.productPictures.first
              : productWithId.product.productPictures.last,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return SizedBox(
        width: 400,
        height: 300,
        child: Image.network(
          overIndex > 0
              ? productWithId.product.productPictures.last
              : productWithId.product.productPictures.first,
          fit: BoxFit.cover,
        ),
      );
    }
  }
}
