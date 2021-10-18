import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/data/dummy_data.dart';
import 'package:ui/model/product.dart';

class DetailsPage extends StatefulWidget {
  final List<Product> loadedProducts = dummyProducts;
  final int? teste;

  DetailsPage({Key? key, this.teste}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String? foto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            children: [
              Container(
                color: widget.loadedProducts[widget.teste!.toInt()].color,
                width: double.infinity,
                height: 200,
              ),
              Hero(
                tag: 'tag${widget.teste!.toInt()}',
                child: Image.asset(
                  foto ?? widget.loadedProducts[widget.teste!.toInt()].imageUrl,
                ),
              ),
            ],
          ),
          Text(
            widget.loadedProducts[widget.teste!.toInt()].title,
            style: GoogleFonts.quicksand(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            widget.loadedProducts[widget.teste!.toInt()].description,
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                       foto = widget
                        .loadedProducts[widget.teste!.toInt()].imageUrl
                        .toString();
                    });
                  },
                  child: Card(
                    elevation: 0,
                    child: Image.asset(widget
                        .loadedProducts[widget.teste!.toInt()].imageUrl
                        .toString()),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                       foto = widget
                        .loadedProducts[widget.teste!.toInt()].imageUrl2
                        .toString();
                    });
                   
                  },
                  child: Card(
                    elevation: 0,
                    child: Image.asset(widget
                        .loadedProducts[widget.teste!.toInt()].imageUrl2
                        .toString()),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Text(
                'Preço: R\$' +
                    widget.loadedProducts[widget.teste!.toInt()].price
                        .toString(),
                style: GoogleFonts.quicksand(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      )),
    );
  }
}
