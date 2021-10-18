import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/Animation/FadeAnimation.dart';
import 'package:ui/data/dummy_data.dart';
import 'package:ui/model/product.dart';
import 'package:ui/screens/components/card.dart';
import 'package:ui/screens/components/card_promocao.dart';

class HomePage extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nike',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CardProdutos(),
          ),
          CardPromocao()
        ],
      ),
    );
  }
}
