/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/kitchen.dart';
import 'package:http/http.dart' as http;

class Categories with ChangeNotifier{
  List<Category>_items =[
    Category(
      id: 'd1',
      category: 'Maharashtrian',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd2',
      category: 'Gujarati',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd3',
      category: 'South Indian',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd4',
      category: 'North Indian',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd5',
      category: 'Goan',
      subcategory: '',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd6',
      category: 'Indo-Oriental',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd7',
      category: 'Jain',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd8',
      category: 'International',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd9',
      category: 'Desserts & Cakes',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd10',
      category: 'Desserts & Cakes',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd11',
      category: 'Desserts & Cakes',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
    Category(
      id: 'd12',
      category: 'Desserts & Cakes',
      subcategory: 'Breakfast',
      title: 'Misal Pav',
      description: 'Is a popular Category from Maharashtra, India. It consists of misal (a spicy curry usually made from moth beans) and pav (a type of Indian bread roll). The final Category is topped with farsan or sev, onions, lemon and coriander (cilantro).',
      recipe: 'test10',
      imageFile: 'assets/images/default_food.jpg',
      price:150,
    ),
  ];

  List<Category> get items {
  return [..._items];}

  List<Category> get favoriteItems {
  return _items.where((categoriesItem) => categoriesItem.isFavorite).toList();}

  Category findById(String id){
  return _items.firstWhere((category) => category.id == id);}

  void addCategory(Category category){
    const url = 'https://mothers-kitchen.firebaseio.com/users/3q6HmMWUpuUtJOkVLtqLng1vZZ63/categories.json';
    http.post(url, body: json.encode({
      'category': category.category,
      'subcategory': category.subcategory,
      'title':category.title,
      'description':category.description,
      'recipe':category.recipe,
      'imageFile':category.imageFile,
      'price':category.price,
      'isFavorite':category.isFavorite,
    }));
    final newCategory = Category(
      id: DateTime.now().toString(),
      category: category.category,
      subcategory: category.subcategory,
      title: category.title,
      description:category.description,
      recipe:category.recipe,
      imageFile:category.imageFile,
      price:category.price,
    );
    _items.insert(0,newCategory);
    notifyListeners();
}
void updateCatergory(String id, Category newCategory){
    final cateIndex = _items.indexWhere((cate) => cate.id==id);
    if (cateIndex >=0 ) {
      _items[cateIndex] = newCategory;
      notifyListeners();
    } else {
      print('...');
      }
}
void deleteCategory(String id){
    _items.removeWhere((cate)=> cate.id == id);
    notifyListeners();
}
}

*/
