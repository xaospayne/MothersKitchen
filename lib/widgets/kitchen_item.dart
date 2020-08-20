import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/kitchen_model.dart';
import '../screens/kitchen_meal_screen.dart';

class KitchenItem extends StatelessWidget {
  static const routeName = '/Kitchen-Item';

  final String id;
  final String title;
  final String description;
  final String category;
  final String imageUrl;
  final double price;
  final double timing;
  final Status status;

  KitchenItem({
      @required this.id,
      @required this.title,
      @required this.description,
      @required this.category,
      @required this.imageUrl,
      @required this.price,
      @required this.timing,
      @required this.status,
});
  void selectKitchen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(KitchenMealScreen.routeName, arguments:{'id':id,'title': title,});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()  => selectKitchen(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
         header: GridTileBar(
           backgroundColor: Colors.black54,
           title: Text(title,),
           subtitle:Text(description,maxLines: 2,),
         ),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey[300], shape: BoxShape.rectangle, borderRadius:
            BorderRadius.circular(15), boxShadow: [
            BoxShadow(color: Colors.grey[600], offset:Offset(4.0,4.0), blurRadius:15.0 , spreadRadius: 1.0),
            BoxShadow(color: Colors.white, offset:Offset(-4.0,-4.0), blurRadius:15.0 , spreadRadius: 1.0,),],
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
            colors: [Colors.grey[200], Colors.grey[300], Colors.grey[400], Colors.grey[500],],
            stops: [0.1,0.3,0.8,0.9])
            ),
           child: Image.network(
             imageUrl,
             fit: BoxFit.cover,)),
         footer: GridTileBar(
           leading: Text(category,),
           ),
         )
        ),
    );
  }
}