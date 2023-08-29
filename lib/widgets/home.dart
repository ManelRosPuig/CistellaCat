import 'package:cistella_cat/widgets/recent_shopping.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:cistella_cat/widgets/shopping_list_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.yellow.shade400, Colors.yellow.shade800],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0, right: 32.0, bottom: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Hola Mònica,',
                  style: GoogleFonts.roboto(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Les teves llistes de la compra:',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.grey.shade900,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: LayoutBuilder(builder: (context, constraints) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: constraints.maxWidth),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ShoppingListCard(),
                          ShoppingListCard(),
                          ShoppingListCard(),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Compres recents:',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.grey.shade900,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Container(
                  padding: const EdgeInsets.only(
                    bottom: 16.0,
                    left: 32.0,
                    top: 16.0,
                    right: 16.0,
                  ),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Column(
                        children: [
                          RecentShopping('Aigua BonArea', 3.21),
                          RecentShopping('Llet BonArea', 2.79),
                          RecentShopping('Pasta Barilla', 1.29),
                          RecentShopping('Pasta Barilla', 1.29),
                          RecentShopping('Pasta Barilla', 1.29),
                          RecentShopping('Pasta Barilla', 1.29),
                          RecentShopping('Pasta Barilla', 1.29),
                          RecentShopping('Pasta Barilla', 1.29),
                          RecentShopping('Pasta Barilla', 1.29),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
