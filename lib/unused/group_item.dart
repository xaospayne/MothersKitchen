/*
import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/group.dart';
import 'file:///C:/development/motherskitchen/lib/unused/category_details_screen.dart';
import 'package:provider/provider.dart';

class GroupItem extends StatelessWidget {
  static const routename = '/group-item';
  @override
  Widget build(BuildContext context) {
    final group = Provider.of<Group>(context, listen: false);
    return  ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(CategoryDetailsScreen.routeName,arguments: group.id);
          },
          child: Stack(children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                group.imageFileOverView,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color:  Colors.black.withAlpha(120),
              child: Center(
                child: Text(
                  group.category,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'MomsFonts',
                    fontSize: 30.0,
                    fontWeight: FontWeight.normal,),
                ),
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}*/
