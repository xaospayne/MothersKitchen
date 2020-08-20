import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/meal_model.dart';

class MealUi extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final Spicy spicy;
  final TypeOf typeOf;
  final int price;

  MealUi({
      @required this.title,
      @required this.description,
      @required this.imageUrl,
      @required this.typeOf,
      @required this.spicy,
      @required this.price,
  });

  String get spicyText {
    switch (spicy) {
      case Spicy.NotSpicy:
        return 'Not Spicy';
        break;
      case Spicy.VerySpicy:
        return 'Very Spicy';
        break;
      case Spicy.MediumSpicy:
        return ' Medium Spicy';
        break;
      default:
        return 'Unknown';
    }
  }
    String get typeOfText {
      switch (typeOf) {
        case TypeOf.NonVeg:
          return 'No-Veg';
          break;
        case TypeOf.PureVeg:
          return 'Veg';
          break;
        case TypeOf.Egg:
          return 'Egg';
          break;
        default:
          return 'Unknown';
      }
  }
    void selectMeal() {

    }

    @override
    Widget build(BuildContext context) {
      return InkWell(
        onTap: selectMeal,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Stack(children: <Widget>[
              ClipRRect(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
                child: Image.network(
                  imageUrl,
                  height: 160,
                  width: double.infinity,fit: BoxFit.cover,),
              ),
              Positioned(
                bottom: 1,

                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20,),
                  color: Colors.black54,
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title, style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold), softWrap: true, overflow: TextOverflow.fade,),
                      Text(description, style: TextStyle(fontSize: 15,color: Colors.white), softWrap: true, overflow: TextOverflow.fade,),
                    ],
                  ),
                ),
              )
            ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(children: <Widget>[
                    Text('Rs $price/-',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(' Excluding Taxes',style: TextStyle(fontSize: 12,),),
                  ],
                  ),
                  SizedBox(width: 50,),
                  Row(children: <Widget>[
                    Text(spicyText, style: TextStyle( fontSize: 15,),),
                    Text(' | ',style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold,),),
                    Text(typeOfText,style: TextStyle( fontSize: 15,fontWeight: FontWeight.bold,),),
                  ],
                  ),

                  IconButton(
                      icon: Icon(Icons.shopping_cart),
                      onPressed: null)
                ],
              ),
            )
          ],
          ),
        ),
      );
    }
  }
