import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const  routeName = '/filters-screen';

  final Function saveFilters;
  final Map<String, bool> currentFilters;
  FiltersScreen(this.currentFilters,this.saveFilters);
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  bool _nonvegetarian = false;
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _lactoseFree = false;

  @override
  initState(){
    _glutenFree = widget.currentFilters['gluten'];
    _nonvegetarian = widget.currentFilters['nonvegetarian'];
    _vegetarian = widget.currentFilters['vegetarian'];
    _lactoseFree = widget.currentFilters['lactose'];
    super.initState();
  }

  Widget _buildSwitchListTile (String title, String description, bool currentValue, Function updateValue,) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Your Filters',),
       actions: <Widget>[
         IconButton(
             icon: Icon(Icons.save),
             onPressed:  () {
               final selectedFilters = {
               'gluten' : _glutenFree,
               'lactose' : _lactoseFree,
               'nonvegetarian': _nonvegetarian,
               'vegetarian': _vegetarian,
               };
               widget.saveFilters(selectedFilters);
                },),
       ],
      ),
      drawer: AppDrawer(),
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
          'Adjust Your Selections',
          style: Theme.of(context).textTheme.headline6,
  ),
  ),
        Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(''
                    'Non-Veg',
                  'Only Non-Veg Meals Selected',
                  _nonvegetarian,
                    (newValue){setState(() {_nonvegetarian =newValue;
                    },
                    );
                },
                ),
                _buildSwitchListTile(''
                    'GlutenFree',
                  'Only GlutenFree Meals Selected',
                  _glutenFree,
                      (newValue){setState(() {_glutenFree =newValue;
                  },
                  );
                  },
                ),
                _buildSwitchListTile(''
                    'Vegetarian',
                  'Only Vegetarian Meals Selected',
                  _vegetarian,
                      (newValue){setState(() {_vegetarian =newValue;
                  },
                  );
                  },
                ),
                _buildSwitchListTile(''
                    'LactoseFree',
                  'Only LactoseFree Meals Selected',
                  _lactoseFree,
                      (newValue){setState(() {_lactoseFree =newValue;
                  },
                  );
                  },
                )
                ],
            ))
  ],
  )
    );
  }
}
