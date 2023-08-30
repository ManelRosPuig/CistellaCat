import 'package:uuid/uuid.dart';

class Shop {
  final Uuid uuid;
  final String name;
  final String image;

  Shop({
    required this.uuid,
    required this.name,
    required this.image,
  });
}
