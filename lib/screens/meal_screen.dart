import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/kitchen_n_meal_provider.dart';
import 'package:motherskitchen/widgets/meal_item.dart';
import 'package:provider/provider.dart';

class MealScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mealData = Provider.of<MealsListProvider>(context);
    final mealsList = mealData.mealItems;
    return(Scaffold(
      body: GridView.builder(//PRODUCTS GRID
        padding: const EdgeInsets.all(10),
        itemCount: mealsList.length,
        itemBuilder: (ctx,i)=> MealItem(
          mealsList[i].kitchenId,
          mealsList[i].id,
          mealsList[i].title,
          mealsList[i].description,
          mealsList[i].imageUrl,
          mealsList[i].typeOf, ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    ));

  }
}


/*GridView(
      children: mealList.map((meaData) =>MealItem(
        meaData.kitchenId,
        meaData.id,
        meaData.title,
        meaData.description,
        meaData.imageUrl,
        meaData.typeOf,
        //kitData.status,
      )
      ).toList(),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );*/