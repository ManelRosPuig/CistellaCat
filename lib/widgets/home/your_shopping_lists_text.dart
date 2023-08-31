import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class YourShoppingListsText extends StatelessWidget {
  const YourShoppingListsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, bottom: 12.0),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          'Les teves llistes de la compra:',
          textScaleFactor: 1.0,
          style: GoogleFonts.roboto(
            fontSize: 16,
            color: Colors.grey.shade900,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
