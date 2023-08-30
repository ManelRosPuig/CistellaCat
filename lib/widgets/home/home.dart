import 'package:flutter/material.dart';

import 'package:cistella_cat/widgets/yellow_background.dart';
import 'package:cistella_cat/widgets/home/home_title.dart';
import 'package:cistella_cat/widgets/home/your_shopping_lists_text.dart';
import 'package:cistella_cat/widgets/home/your_shopping_lists.dart';
import 'package:cistella_cat/widgets/home/recent_shoppings_text.dart';
import 'package:cistella_cat/widgets/home/recent_shoppings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return YellowBackground(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0, right: 12.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            const minHeight = 600.0;
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight < minHeight ? minHeight : constraints.maxHeight,
                ),
                child: Container(
                  height: constraints.maxHeight,
                  padding: const EdgeInsets.only(right: 20.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HomeTitle(),
                      YourShoppingListsText(),
                      YourShoppingLists(),
                      RecentShoppingsText(),
                      RecentShoppings(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
