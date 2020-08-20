/*
import '../widgets/group_grid.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//import '../widgets/badge.dart';
//import '../providers/cart.dart';
//import './cart_screen.dart';

enum FilterOptions {
  Favorites,
  All,
}

class GroupOverviewScreen extends StatefulWidget {
  //Route Name that overview screen can be called.
  static const routename = '/group-overview';
  @override
  _GroupOverviewScreenState createState() => _GroupOverviewScreenState();
}

class _GroupOverviewScreenState extends State<GroupOverviewScreen> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyShop'),
          actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
            setState(() {
            if (selectedValue == FilterOptions.Favorites) {
            _showOnlyFavorites = true;
            } else {
            _showOnlyFavorites = false;
            }
            });
            },
            icon: Icon(
            Icons.more_vert,
            ),
            itemBuilder: (_) => [
            PopupMenuItem(
              child: Text('Only Favorites'),
              value: FilterOptions.Favorites,
              ),
            PopupMenuItem(
              child: Text('Show All'),
              value: FilterOptions.All,
            ),
    ],
    ),
          */
/*Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(
              Icons.shopping_cart,
              ),
              onPressed: () {Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              ),
              ),*//*

              ],
              ),
       body: GroupsGrid(_showOnlyFavorites),
    );

  }
}

*/
