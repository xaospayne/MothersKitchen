/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/groups.dart';
import './group_item.dart';

class GroupsGrid extends StatelessWidget {
  final bool showFavs;
  GroupsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final groups = Provider.of<Groups>(context).items;
    final groups = showFavs ? groupsData.favoriteItems : groupsData.items;
    return GridView.builder(

      padding: const EdgeInsets.all(10.0),
      itemCount: groups.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // builder: (c) => products[i],
        value: groups[i],
        child: GroupItem(
          // products[i].id,
          // products[i].title,
          // products[i].imageUrl,
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
*/
