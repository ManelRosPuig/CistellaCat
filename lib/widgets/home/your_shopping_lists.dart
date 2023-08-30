import 'package:cistella_cat/widgets/home/shopping_list_card.dart';
import 'package:flutter/material.dart';

class YourShoppingLists extends StatelessWidget {
  const YourShoppingLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 32.0),
      child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraints.maxWidth),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ShoppingListCard(isCreateNew: true),
                  ShoppingListCard(
                    label: 'Aigua 5L BonArea',
                    icon: 'assets/images/food/water.png',
                    color: Colors.lightBlue.shade200,
                  ),
                  const ShoppingListCard(
                    label: 'Barres de pa Santa Glòria',
                    icon: 'assets/images/food/bread.png',
                    color: Color.fromARGB(255, 238, 192, 123),
                  ),
                  const ShoppingListCard(
                    label: 'Llet 6L BonArea',
                    icon: 'assets/images/food/milk_bottle.png',
                    color: Colors.white70,
                  ),
                  ShoppingListCard(
                    label: 'Tomàquets Fruiteria',
                    icon: 'assets/images/food/tomato.png',
                    color: Colors.red.shade400,
                  ),
                  const ShoppingListCard(
                    label: 'Pizzas Condis',
                    icon: 'assets/images/food/pizza.png',
                    color: Color.fromARGB(255, 255, 250, 138),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
