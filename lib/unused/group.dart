import 'package:flutter/material.dart';

class Group with ChangeNotifier {
  final String id;
  final String category;
  final String imageFileOverView;
  bool isFavorite;
  Group({
    @required this.id,
    @required this.category,
    @required this.imageFileOverView,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

}

