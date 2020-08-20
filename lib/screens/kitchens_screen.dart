import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/kitchen_n_meal_provider.dart';
import 'package:motherskitchen/widgets/kitchen_item.dart';
import 'package:provider/provider.dart';
//import '../kitchen_list.dart';

class KitchenScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final kitchensData = Provider.of<KitchensListProvider>(context);
    final kitchensList = kitchensData.kitchenItems;
    return Scaffold(
     body: GridView.builder( //PRODUCTS GRID
        padding: const EdgeInsets.all(10),
        itemCount: kitchensList.length,
       itemBuilder: (ctx,i)=> KitchenItem(
           id: kitchensList[i].id,
           title: kitchensList[i].title,
           description: kitchensList[i].description,
           category:kitchensList[i].category,
           imageUrl: kitchensList[i].imageUrl,
           price: kitchensList[i].price,
           timing:kitchensList[i].timing,
           status: kitchensList[i].status

       ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
        ),
     ),
    );

  }
}
/*class KitchensScreenGrid extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

  }
  }*/

/* GridView(
      padding: EdgeInsets.all(15),
      children: kitchenList.map((kitData) =>KitchenItem(
        kitData.id,
        kitData.title,
        kitData.description,
        kitData.category,
        kitData.imageUrl,
        kitData.price,
        kitData.timing,
        kitData.status,
      )
      ).toList(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );*/