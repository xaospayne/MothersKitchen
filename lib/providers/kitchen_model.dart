import 'package:flutter/foundation.dart';

enum Status {
  online,
  offline
}

/*enum Favorite {
  favorite,
  nonFavorite,
}*/

class Kitchen with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String category;
  final String imageUrl;
  final double price;
  final double timing;
  final Status status;
  bool  isKitchenFavorite;
  //final Favorite favorite;

  Kitchen({ //had a const constructor
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.category,
    @required this.imageUrl,
    @required this.price,
    @required this.timing,
    @required this.status,
    this.isKitchenFavorite,
  });
}

