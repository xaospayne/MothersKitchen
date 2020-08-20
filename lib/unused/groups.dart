/*
import 'package:flutter/material.dart';
import '../providers/group.dart';

class Groups with ChangeNotifier{
  List<Group>_items = [
    Group(
      id: 'd1',
      category: 'Maharashtrian',
      imageFileOverView:'assets/images/maharashtrian.jpg',
    ),
    Group(
      id: 'd2',
      category: 'Gujarati',
      imageFileOverView:'assets/images/gujarati.jpg',
    ),
    Group(
      id: 'd3',
      category: 'South Indian',
      imageFileOverView:'assets/images/southindian.jpg',
    ),
    Group(
      id: 'd4',
      category: 'North Indian',
      imageFileOverView:'assets/images/northindian.jpg',
    ),
    Group(
      id: 'd5',
      category: 'Goan',
      imageFileOverView:'assets/images/goan.jpg',
    ),
    Group(
      id: 'd6',
      category: 'Indo-Oriental',
      imageFileOverView:'https://xaosity.com/pics/maharashtrian.jpg',
    ),
    Group(
      id: 'd7',
      category: 'Jain',
      imageFileOverView:'assets/images/jain.jpg',
    ),
    Group(
      id: 'd8',
      category: 'International',
      imageFileOverView:'assets/images/international.jpg',
    ),
    Group(
      id: 'd9',
      category: 'Desserts & Cakes',
      imageFileOverView: 'assets/images/dessertscakes.jpg',
    ),
  ];
  List<Group> get items {
    return [..._items];}

    List<Group> get favoriteItems {
    return _items.where((grouItem) => grouItem.isFavorite).toList();
  }

  Group findById(String id){
    return _items.firstWhere((grou) => grou.id == id);}
}*/
