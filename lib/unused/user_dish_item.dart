/*
import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/categories.dart';
import 'file:///C:/development/motherskitchen/lib/unused/add_edit_dish_screen.dart';
import 'package:provider/provider.dart';


class UserDishItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageFile;

  UserDishItem(
      this.id,
      this.title,
      this.imageFile
      );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageFile),
      ),
      trailing: Container(
        width: 100,
        child: Row(children: <Widget>[
          IconButton(icon: Icon(Icons.edit),
          color: Theme.of(context).primaryColor,
            onPressed: (){
            Navigator.of(context).pushNamed(EditDishScreen.routeName, arguments:id);
            },
          ),
          IconButton(icon: Icon(Icons.delete),
            color: Theme.of(context).primaryColor,
            onPressed: (){
             Provider.of<Categories>(context, listen: false).deleteCategory(id);
            },
          ),
        ],
        ),
      ),
    );

  }
}
*/
