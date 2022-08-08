import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sepet/product/product_controller.dart';

import 'pruduct_Item_widget.dart';

// ignore: must_be_immutable
class ProductView extends StatelessWidget {
  late ProductConttroller productConttroller;

  ProductView({Key? key}) : super(key: key) {
    productConttroller = Get.put(ProductConttroller());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sepet'),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: productConttroller.list.length,
            itemBuilder: (context, index) {
              return PruductItemWidget(index: index);
            }),
      ),
    );
  }
}
