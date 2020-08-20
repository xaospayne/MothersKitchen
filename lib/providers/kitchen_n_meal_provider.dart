import 'package:flutter/foundation.dart';
import 'kitchen_model.dart';
import 'meal_model.dart';

class KitchensListProvider with ChangeNotifier{
 List<Kitchen> _kitchenItems = [
    Kitchen(
      id: 'k1', // System Generated ID of the kitchen
      title: 'Test Kitchen 1',// name of the kitchen
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',// A two liner about the cook.
      category: 'NonVeg',// type of kitchen Pure veg or Veg& Non Veg
      imageUrl: 'http://xaosity.com/pics/ComingSoon2-fnasafety.png',// User Provided Image  for the Kitchen
      price: 150,// Avg cost of a meal for a person
      timing: 30,//approx time to prepare & ready
      status: Status.online,// Status of the Kitchen
      //favorite: Favorite.nonFavorite,
    ),
    Kitchen(
        id: 'k2', // System Generated ID of the kitchen
        title: 'Test Kitchen 2',// name of the kitchen
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',// A two liner about the cook.
        category: 'NonVeg',// type of kitchen Pure veg or Veg& Non Veg
        imageUrl: 'http://xaosity.com/pics/default_food.jpg', // User Provided Image  for the Kitchen
        price: 200,// Avg cost of a meal for a person
        timing: 30,//approx time to prepare & ready
        status: Status.offline,// Status of the Kitchen
        //favorite: Favorite.nonFavorite
    ),
    Kitchen(
      id: 'k3', // System Generated ID of the kitchen
      title: 'Test Kitchen 3',// name of the kitchen
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',// A two liner about the cook.
      category: 'NonVeg',// type of kitchen Pure veg or Veg& Non Veg
      imageUrl: 'http://xaosity.com/pics/default_food.jpg', // User Provided Image  for the Kitchen
      price: 250,// Avg cost of a meal for a person
      timing: 30,//approx time to prepare & ready
      status: Status.online, // Status of the Kitchen
      //favorite: Favorite.nonFavorite,

    ),
    Kitchen(
      id: 'k4', // System Generated ID of the kitchen
      title: 'Test Kitchen 4',// name of the kitchen
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',// A two liner about the cook.
      category: 'Veg',// type of kitchen Pure veg or Veg& Non Veg
      imageUrl: 'http://xaosity.com/pics/default_food.jpg', // User Provided Image  for the Kitchen
      price: 250,// Avg cost of a meal for a person
      timing: 30,//approx time to prepare & ready
      status: Status.online, // Status of the Kitchen
      //favorite: Favorite.nonFavorite,
    ),
  ];

 List<Kitchen> get kitchenItems{
  return  [..._kitchenItems];
  }
 Kitchen findById(String id){
    return _kitchenItems.firstWhere((kitc) =>kitc.id == id);}
void addKitchen(){// _kitchenItems.add(value);
    notifyListeners();
  }
}

class MealsListProvider with ChangeNotifier{
 List<Meal> _mealItems =  [
 Meal(
      kitchenId: ['k1',],
      id: 'm1',
      title: 'Spaghetti with Tomato Sauce',
      description:'Tomatoes, Olive Oil, Onion, Spaghetti, Spices, Cheese',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      typeOf: TypeOf.Egg,
      spicy: Spicy.NotSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k1'],
      id: 'm2',
      title: 'Toast Hawaii',
      description:'White Bread, Ham, Pineapple, Cheese, Butter',
      imageUrl: 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      typeOf: TypeOf.NonVeg,
      spicy: Spicy.NotSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k1'],
      id: 'm3',
      title: 'Classic Hamburger',
      description:'Cattle Hack,Tomato, Cucumber,Onion, Ketchup,Burger Buns ',
      imageUrl: 'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      spicy: Spicy.VerySpicy,
      typeOf: TypeOf.NonVeg,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k1'],
      id: 'm4',
      title: 'Wiener Schnitzel',
      description:'Veal Cutlets Eggs Bread Crumbs Flour Butter Vegetable Oil Salt Lemon Slices',
      imageUrl: 'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
      typeOf: TypeOf.NonVeg,
      spicy: Spicy.NotSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k1'],
      id: 'm5',
      title: 'Salad with Smoked Salmon',
      description:'ArugulaLamb\'s Lettuce Parsley Fennel Smoked Salmon Mustard Balsamic Vinegar Olive Oil Salt and Pepper',
      imageUrl: 'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
      typeOf: TypeOf.Egg,
      spicy: Spicy.MediumSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k2',],
      id: 'm6',
      title: 'Delicious Orange Mousse',
      description:'Gelatine Orange Juice Sugar Yoghurt Cream Orange Peel',
      imageUrl: 'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      typeOf: TypeOf.PureVeg,
      spicy: Spicy.NotSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k2'],
      id: 'm8',
      title: 'Creamy Indian Chicken Curry',
      description:'Chicken Breasts Onion Cloves of Garlic Ginger Almonds Cayenne Pepper Coconut Milk',
      imageUrl: 'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      typeOf: TypeOf.NonVeg,
      spicy: Spicy.NotSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k3'],
      id: 'm9',
      title: 'Chocolate Souffle',
      description:'Dark Chocolate Butter Tartar white Sugar',
      imageUrl: 'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      typeOf: TypeOf.Egg,
      spicy: Spicy.NotSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k3'],
      id: 'm10',
      title: ' Salad,Asparagus Salad with Cherry Tomatoes, Pine Nuts, Cherry Tomatoes',
      description:'White and Green Asparagus',
      imageUrl: 'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
      typeOf: TypeOf.PureVeg,
      spicy: Spicy.NotSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
 Meal(
      kitchenId: ['k4',],
      id: 'm1',
      title: 'Spaghetti with Tomato Sauce',
      description: 'Tomatoes, Olive Oil, Onion, Spaghetti, Spices, Cheese',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      typeOf: TypeOf.PureVeg,
      spicy: Spicy.NotSpicy,
      price: 200,
      //favoriteMeal: FavoriteMeal.nonFavorite,
    ),
];

 List<Meal> get mealItems{
  return  [..._mealItems];
 }
}