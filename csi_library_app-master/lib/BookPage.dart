import 'package:csi_library/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  final ProductTile productTile;
  const BookPage({super.key, required this.productTile});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Text(productTile.genre,
      style: TextStyle(fontSize: 30),),
    );
  }
}