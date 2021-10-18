import 'package:flutter/material.dart';
import 'package:ui/model/product.dart';

final dummyProducts = [
  Product(
    id: 'p1',
    title: 'Tênis Nike Air Max 95 ',
    description: 'O Nike Air Max 95 Essential pegou algumas dicas de design com o corpo humano. A entressola representa a coluna, os painéis graduados são os músculos, os ilhós dos cadarços são as costelas do tênis e a tela na parte de cima é a pele.',
    price: 899.99,
    imageUrl: 'assets/images/tenis2.png',
    imageUrl2: 'assets/images/airmax95_detalhe1.png',
    top: 80,
    color: Colors.red,
  ),
  Product(
    id: 'p2',
    title: 'Tênis Nike Air VaporMax',
    description: 'A nice pair of trousers.',
    price: 59.99,
    imageUrl: 'assets/images/tenis1.png',
    top: 40,
    color: Colors.black,
  ),
  Product(
    id: 'p3',
    title: 'Tênis Nike Air VaporMax 2021',
    description: 'Warm and cozy - exactly what you need for the winter.',
    price: 19.99,
    imageUrl: 'assets/images/tenis1.png',
    top: 40,
    color: Colors.black,
  ),
  Product(
    id: 'p4',
    title: 'Tênis Nike Air VaporMax 2021',
    description: 'Prepare any meal you want.',
    price: 49.99,
    imageUrl: 'assets/images/tenis1.png',
    top: 40,
    color: Colors.black,
  ),
];
