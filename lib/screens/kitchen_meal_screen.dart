import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/kitchen_n_meal_provider.dart';
import 'package:motherskitchen/screens/meal_ui.dart';
import 'package:motherskitchen/widgets/app_drawer.dart';
import 'package:provider/provider.dart';
//import '../kitchen_list.dart';
//PRODUCTDETAILSCREEN
class KitchenMealScreen extends StatelessWidget { //CategoryMealScreen
  static const routeName = '/KitchenMeal-Screen';

  @override
  Widget build(BuildContext context) {

   final mealsData = Provider.of<MealsListProvider>(context);
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String >;
    final kitchenTitle = routeArgs['title'];
    final kitchenId = routeArgs['id'];
    final mealsList = mealsData.mealItems;
    final kitchenMeals = mealsList.where((meal){return meal.kitchenId.contains(kitchenId);}).toList();

  return Scaffold(
   appBar: AppBar(
    title: Text(kitchenTitle),
   ),
   drawer:AppDrawer() ,
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount:kitchenMeals.length,
        itemBuilder: (ctx, index) {
          return MealUi(
            title: kitchenMeals[index].title,
            imageUrl: kitchenMeals[index].imageUrl,
            description: kitchenMeals[index].description,
            typeOf: kitchenMeals[index].typeOf,
            spicy:kitchenMeals[index].spicy,
            price:kitchenMeals[index].price,
          );
        },
      ),
  );
  }
}