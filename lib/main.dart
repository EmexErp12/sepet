import 'package:flutter/material.dart';

import 'package:sepet/product/product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sepet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductView(),
    );
  }
}
