import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/meal_model.dart';
import './favorites_screen.dart';
import '../widgets/app_drawer.dart';

class MainFavScreen extends StatefulWidget {
  static const routeName = '/mainfav-screen';
  final List<Meal> favoriteMeals;
  MainFavScreen(this.favoriteMeals);

  @override
  _MainFavScreenState createState() => _MainFavScreenState();
}

class _MainFavScreenState extends State<MainFavScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': FavoritesScreen(widget.favoriteMeals),
        'title': 'Your Favorite',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: AppDrawer(),
      body: _pages[_selectedPageIndex]['page'],
    );
  }
}
