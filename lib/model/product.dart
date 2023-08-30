// Product:
// - UUID
// - Name
// - Shop (FK to Shop)
// - Image

// Shop:
// - UUID
// - Name
// - Image

// ShoppingList:
// - UUID
// - Name
// - Image
// - CreationDate
// - BuyDate

// ShoppingListProduct:
// - UUID (FK to ShoppingList)
// - ProductName
// - Quantity

import 'package:uuid/uuid.dart';

class Product {
  final Uuid uuid;
  final String name;
  final String shop;
  final String image;

  Product({
    required this.uuid,
    required this.name,
    required this.shop,
    required this.image,
  });
}
