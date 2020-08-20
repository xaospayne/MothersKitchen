/*
import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/categories.dart';
import 'package:motherskitchen/widgets/app_drawer.dart';
import 'file:///C:/development/motherskitchen/lib/unused/user_dish_item.dart';
import 'package:provider/provider.dart';
import 'add_edit_dish_screen.dart';

class UserDishesScreen extends StatelessWidget {
  static const routename = '/users-dishes';

  @override
  Widget build(BuildContext context) {
    final categoryData = Provider.of<Categories>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Kitchen'),
        actions: <Widget>[
          IconButton(
              icon:  const Icon(Icons.add),
              onPressed: (){
                Navigator.of(context).pushNamed(EditDishScreen.routeName,);
              }),
        ],
      ),
      drawer: AppDrawer(),
      body:Padding(padding: EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: categoryData.items.length,
              itemBuilder: (_, i)=> Column(
                children:[
                  UserDishItem(
                    categoryData.items[i].id,
                    categoryData.items[i].title,
                    categoryData.items[i].imageFile,
                  ),
                  Divider(),
                ],
              ),
          ),
      ),
    );
  }
}
*/
