import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sepet/components/price_widget.dart';
import 'package:sepet/product/product_controller.dart';
import 'package:sepet/utilities/app_constants.dart';

class PruductItemWidget extends StatelessWidget {
  final int index;
  const PruductItemWidget({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductConttroller productConttroller = Get.find();
    return Card(
      child: Column(children: [
        Padding(
          padding: AppConstants.padding,
          child: Text(
            productConttroller.list[index].name,
            style: const TextStyle(fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        PriceWidget(price: productConttroller.list[index].price)
      ]),
    );
  }
}
