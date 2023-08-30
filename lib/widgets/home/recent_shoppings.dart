import 'package:flutter/material.dart';

import 'package:cistella_cat/widgets/home/recent_shopping.dart';

class RecentShoppings extends StatelessWidget {
  const RecentShoppings({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, bottom: 32.0),
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
                  RecentShopping(
                    label: 'Aigua 5L BonArea',
                    price: 3.21,
                    icon: 'assets/images/food/water.png',
                  ),
                  RecentShopping(
                    label: 'Llet 6L BonArea',
                    price: 2.79,
                    icon: 'assets/images/food/milk_bottle.png',
                  ),
                  RecentShopping(
                    label: 'Pizzas Condis',
                    price: 4.89,
                    icon: 'assets/images/food/pizza.png',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
