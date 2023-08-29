import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import 'package:cistella_cat/provider/general_provider.dart';

class GeneralScaffold extends StatelessWidget {
  GeneralScaffold({super.key});

  final GlobalKey drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GeneralProvider>(context);
    return SafeArea(
      child: Scaffold(
        key: drawerKey,
        appBar: AppBar(
          title: const Text('Cistella Cat'),
          titleTextStyle: GoogleFonts.roboto(
            fontSize: 24,
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: provider.body,
        bottomNavigationBar: Container(
          color: Colors.yellow.shade800,
          child: FloatingNavbar(
            selectedBackgroundColor: Colors.yellow.shade800,
            onTap: (value) {
              switch (value) {
                case 0:
                  provider.navigateToShopping();
                  break;
                case 1:
                  provider.navigateToHome();
                  break;
                case 2:
                  provider.navigateToPeople();
                  break;
              }
            },
            currentIndex: provider.index,
            items: [
              FloatingNavbarItem(icon: Icons.shopping_cart, title: 'Compres'),
              FloatingNavbarItem(icon: Icons.home, title: 'Inici'),
              FloatingNavbarItem(icon: Icons.people, title: 'Familia'),
            ],
          ),
        ),
      ),
    );
  }
}
