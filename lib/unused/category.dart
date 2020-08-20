import 'package:flutter/foundation.dart';
class Category with ChangeNotifier{
  final String id;
  final String title;
  final String category;
  final String subcategory;
  final String description;
  final String imageFile;
  final String recipe;
  final double price;
  bool isFavorite;

  Category({
    @required this.id,
    @required this.title,
    @required this.category,
    @required this.subcategory,
    @required this.description,
    @required this.imageFile,
    @required this.recipe,
    @required this.price,
    this.isFavorite = false,
  });
  void toggleFavoriteStatus(){
    isFavorite = !isFavorite;
    notifyListeners();
  }

}