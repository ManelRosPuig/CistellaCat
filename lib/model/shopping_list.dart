import 'package:uuid/uuid.dart';

class ShoppingList {
  final Uuid uuid;
  final String name;
  final String image;
  final DateTime creationDate;
  final DateTime buyDate;

  ShoppingList({
    required this.uuid,
    required this.name,
    required this.image,
    required this.creationDate,
    required this.buyDate,
  });
}
