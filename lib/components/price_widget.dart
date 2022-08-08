import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final double price;

  const PriceWidget({required this.price, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      price.toString(),
      style: const TextStyle(fontSize: 18),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
