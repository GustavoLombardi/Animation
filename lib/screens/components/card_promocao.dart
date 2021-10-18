import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPromocao extends StatelessWidget {
  const CardPromocao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 140),
      child: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            child: Column(children: [
              Text(
                'Tênis Destaque do Mês',
                style: GoogleFonts.quicksand(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tênis Nike Air VaporMax 2021',
                    style: GoogleFonts.quicksand(
                        fontSize: 16, color: Colors.white),
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
