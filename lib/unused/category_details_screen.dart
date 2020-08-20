/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../providers/categories.dart';
import 'package:provider/provider.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static const routeName = '/category-detail';

  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context).settings.arguments as String;
    final loadedCategory = Provider.of<Categories>(context, listen: false,).findById(categoryId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedCategory.title,style: TextStyle(fontFamily: 'MomsFonts',fontSize: 20.0),),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle.light,
        child: GestureDetector(onTap: ()=>FocusScope.of(context).unfocus(),
          //Main Tree holding All the necessary Containers
          child: Column(children: <Widget>[
            Container(
              child: Center(
                child: Image.asset('assets/images/detailscreen.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
             Expanded(
                child: ListView(
                  children: <Widget>[
                  ],
                ),
              ),
              ]),
            ),
        ),
    );
  }
}
*/
