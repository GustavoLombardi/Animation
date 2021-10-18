import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/Animation/FadeAnimation.dart';
import 'package:ui/data/dummy_data.dart';
import 'package:ui/model/product.dart';
import 'package:ui/screens/details.dart';

class CardProdutos extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  CardProdutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: loadedProducts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
           
            child: Container(
              height: 200,
              width: 300,
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(padding: EdgeInsets.only(bottom: 90)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      width: 230,
                      height: 300,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              loadedProducts[index].color!,
                              loadedProducts[index].color!,
                            ],
                            begin: FractionalOffset.topRight,
                            end: FractionalOffset.bottomLeft,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Positioned(
                      top: loadedProducts[index].top,
                      right: 1,
                      left: -55,
                      bottom: 50,
                      child: FadeAnimation(
                          2,
                          Hero(
                            tag: 'tag$index',
                            child: Image.asset(
                              loadedProducts[index].imageUrl,
                              width: 390,
                              height: 390,
                            ),
                          ))),
                  Positioned(
                      top: 100,
                      left: 50,
                      child: FadeAnimation(
                          1,
                          Text(
                            loadedProducts[index].title,
                            style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsPage(teste:index)));
            },
          );
        });
  }
}
