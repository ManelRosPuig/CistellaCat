import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingListCard extends StatelessWidget {
  const ShoppingListCard({
    super.key,
    this.isCreateNew = false,
    this.label,
    this.icon,
    this.color,
  });

  final bool isCreateNew;
  final String? label;
  final String? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 150,
        height: 175,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: isCreateNew
            ? Center(
                child: Text(
                '+',
                style: GoogleFonts.roboto(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    icon!,
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 110,
                    child: Text(
                      label!,
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
