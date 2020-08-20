import 'package:flutter/material.dart';

enum Spicy {
  VerySpicy,
  MediumSpicy,
  NotSpicy,
}
enum TypeOf {
  PureVeg,
  Egg,
  NonVeg,
}
/*enum FavoriteMeal {
  favorite,
  nonFavorite,
}*/

class Meal with ChangeNotifier {
  final List<String> kitchenId;
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final TypeOf typeOf;
  final Spicy spicy;
  final int price;
  bool isFavorite;
  //final FavoriteMeal favoriteMeal;

  Meal({
    @required this.kitchenId,
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    @required this.typeOf,
    @required this.spicy,
    @required this.price,
    this.isFavorite,
  });

}
