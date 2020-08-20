import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/meal_model.dart';

class MealItem extends StatelessWidget {
  static const routeName = 'Meal-Item';

  final List<String> kitchenId;
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final TypeOf typeOf;

  MealItem(
      @required this.kitchenId,
      @required this.id,
      @required this.title,
      @required this.description,
      @required this.imageUrl,
      @required this.typeOf,
      );
@override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
            header: GridTileBar(
              backgroundColor: Colors.black54,
              title: Text(title,),
            ),
            child: Container(
                decoration:
                BoxDecoration(color: Colors.grey[300], shape: BoxShape.rectangle, boxShadow: [
                  BoxShadow(color: Colors.grey[600], offset:Offset(4.0,4.0), blurRadius:15.0 , spreadRadius: 1.0),
                  BoxShadow(color: Colors.white, offset:Offset(-4.0,-4.0), blurRadius:15.0 , spreadRadius: 1.0,),],
                    gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,
                        colors: [Colors.grey[200], Colors.grey[300], Colors.grey[400], Colors.grey[500],],
                        stops: [0.1,0.3,0.8,0.9])
                ),
                child: Image.network(imageUrl, fit: BoxFit.cover,)),

        ),
      ),
    );
  }
}








/*import 'package:flutter/material.dart';
import '../screens/meal_detail_screen.dart';
import '../models/kitchen_model.dart';*/

/*class MealItem extends StatelessWidget {
final String id;
final String title;
final String imageUrl;
//final int duration;
//final Complexity complexity;
//final Affordability affordability;

MealItem({
  @required this.id,
  @required this.title,
  @required this.imageUrl,
  //@required this.duration,
  //@required this.affordability,
  //@required this.complexity,

});

*//*String get complexityText {
switch(complexity){
  case  Complexity.Simple:
    return'Simple   ';
    break;
  case Complexity.Challenging:
    return'Challenging   ';
    break;
  case Complexity.Hard:
    return'Hard   ';
    break;
  default:
    return'Unknown   ';
}
}
String get affordabilityText {
  switch (affordability) {
    case Affordability.Affordable:
      return 'Affordable   ';
      break;
    case Affordability.Pricey:
      return 'Pricey   ';
      break;
    case Affordability.Luxurious:
      return 'Luxurious   ';
      break;
    default:
      return 'Unknown   ';
  }
}*//*

  void selectMeal(BuildContext context){
  Navigator.of(context).pushNamed(
    MealDetailScreen.routeName,
    arguments:id,
   )
      .then((result) {
        if (result != null) {}
      });
}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight:Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit:  BoxFit.cover,
                  ),
                ),
                    Positioned(
                      bottom:0,
                      right: 0,
                      child: Container(
                        width:400,
                        height:75,
                        color: Colors.black54,
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        child: Text(title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                 Row(children: <Widget>[
                      SizedBox(width: 6,),
                      Text('Rs $duration /-  Excluding taxes'),],),
                 Row(children: <Widget>[
                   SizedBox(width: 6,),
                   Text(complexityText),],),
                    Row(children: <Widget>[
                      Icon(Icons.attach_money,),
                      SizedBox(width: 6,),
                      Text(affordabilityText),],),
                  ]
              ),

            )],
        ),
      ),
    );
  }
}*/
