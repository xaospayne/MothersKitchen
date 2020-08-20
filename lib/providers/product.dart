import 'package:flutter/foundation.dart';

/*enum Status {
  online,
  offline
}*/
/*enum Favorite {
  favorite,
  nonFavorite,
}*/

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String category;
  final String imageUrl;
  final double price;
  final double timing;
  bool status;
  bool  isKitchenFavorite;
  //final Favorite favorite;

  Product ({ //had a const
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.category,
    @required this.imageUrl,
    @required this.price,
    @required this.timing,
    this.status,
    this.isKitchenFavorite,
  });
}

