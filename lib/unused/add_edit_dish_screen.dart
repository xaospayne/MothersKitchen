/*
import 'package:image_picker/image_picker.dart';
//import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:motherskitchen/providers/categories.dart';
import 'package:motherskitchen/providers/kitchen.dart';
import 'package:provider/provider.dart';
import 'user_dish_image.dart';


class EditDishScreen extends StatefulWidget {
 static const routeName = '/edit-dish';
  @override
  _EditDishScreenState createState() => _EditDishScreenState();
}
String selectCategory = '';
final categoriesSelected = TextEditingController();
List<String> categoryNames = [
  'Maharashtrian',
  'Gujarati',
  'South India',
  'North Indian',
  'Goan',
  'Jain',
  'Indo-Oriental',
  'International',
  'Desserts & Cakes',
];
String selectSubcategory = '';
final subcategoriesSelected = TextEditingController();
List<String> subcategoryNames = [
  'Breakfast',
  'Starters',
  'Main Course',
  'Roti\'s & Breads',
  'Rice',
  'Rolls & Frankie\'s',
  'Sandwiches & Burgers',
  'MilkShake & Beverages',
  'Desserts & Cakes',
  'Others',
];
class _EditDishScreenState extends State<EditDishScreen> {
  final _descriptionFocusNode = FocusNode();
  final _recipeFocusNode = FocusNode();
  final _priceFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  var _editedCategory = Category(
    id: null,
    category: '',
    subcategory: '',
    title: '',
    description: '',
    recipe: '',
    imageFile:'',
    price: 0,
  );
  var _isInit = true;
  var _initValues = {
  'category': '',
  'subcategory': '',
  'title': '',
  'description': '',
  'recipe': '',
  //'imageUrl':'',
  'price': '',
};

  @override
  void didChangeDependencies() {
    if(_isInit){
      final catergoryId = ModalRoute.of(context).settings.arguments as String;
        if(catergoryId != null){
          _editedCategory =
              Provider.of<Categories>(context, listen: false).findById(catergoryId);
          _initValues = {
            'category': _editedCategory.category,
            'subcategory': _editedCategory.subcategory,
            'title': _editedCategory.title,
            'description': _editedCategory.description,
            'recipe': _editedCategory.recipe,
            //'imageUrl':_editedCategory.imageUrl,
            'price': _editedCategory.price.toString(),
          };
        }
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
 void dispose(){
   _descriptionFocusNode.dispose();
   _recipeFocusNode.dispose();
   _priceFocusNode.dispose();
   super.dispose();
 }

 void _saveForm(){
   final isValid = _form.currentState.validate();
   if (!isValid){
     return;
   }
   _form.currentState.save();
   if(_editedCategory.id != null){
     Provider.of<Categories>(context, listen: false).updateCatergory(_editedCategory.id, _editedCategory);
   } else {
     Provider.of<Categories>(context, listen: false).addCategory(_editedCategory);
     Navigator.of(context).pop();
   }
 }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add & Edit My Dish'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              onPressed: _saveForm,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
            child: ListView(
              children: <Widget>[
                UserDishImage(),
                */
/*DropDownField(
                  controller: categoriesSelected,
                  hintText: 'Select a category',
                  itemsVisibleInDropdown: 5,
                  enabled: true,
                  items: categoryNames,
                  onValueChanged: (value){
                    setState(() {
                      selectCategory = value;
                      _editedCategory =Category(
                        isFavorite: _editedCategory.isFavorite,
                        id: _editedCategory.id,
                        category: value,
                        subcategory: _editedCategory.subcategory,
                        title: _editedCategory.title,
                        description: _editedCategory.description,
                        recipe: _editedCategory.recipe,
                        imageUrl: _editedCategory.imageUrl,
                        price: _editedCategory.price,);

                    });
                  },
                ),*//*

                */
/*DropDownField(
                  controller: subcategoriesSelected,
                  hintText: 'Select a sub-Category',
                  itemsVisibleInDropdown: 5,
                  enabled: true,
                  items: subcategoryNames,
                  onValueChanged: (value){
                    setState(() {
                      selectCategory = value;
                      _editedCategory =Category(
                        isFavorite: _editedCategory.isFavorite,
                        id: _editedCategory.id,
                          category: _editedCategory.category,
                          subcategory: value,
                          title: _editedCategory.title,
                          description: _editedCategory.description,
                          recipe: _editedCategory.recipe,
                          imageUrl: _editedCategory.imageUrl,
                          price: _editedCategory.price,);
                    });
                  },
                ),*//*

                */
/*SizedBox(height: 10,),*//*

                TextFormField(
                  initialValue: _initValues['title'],
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please Enter A Dish Name';
                    }  return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'title',
                      hintText: 'eg: Masala Dosa, Butter Chicken...etc.',
                  ),
                  maxLength: 26,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_){
                    FocusScope.of(context).requestFocus((_descriptionFocusNode),
                    );
                  },
                  onSaved: (value){
                    _editedCategory = Category(
                      isFavorite:   _editedCategory.isFavorite,
                      id:           _editedCategory.id,
                      category:     _editedCategory.category,
                      subcategory:  _editedCategory.subcategory,
                      title: value,
                      description:  _editedCategory.description,
                      recipe:       _editedCategory.recipe,
                      imageFile:     _editedCategory.imageFile,
                      price:        _editedCategory.price,
                    );
                  },

                ),
                TextFormField(
                    initialValue: _initValues['description'],
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please Enter A Description';
                    }
                    if(value.length < 15){
                      return 'Please Enter A Detailed Description';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'description', hintText: 'Enter a Short Description about your dish.'),
                  maxLines: 3,
                  maxLength: 160,
                  maxLengthEnforced: true,
                  keyboardType: TextInputType.multiline,
                  focusNode: _descriptionFocusNode,
                  onFieldSubmitted: (_){
                    FocusScope.of(context).requestFocus((_recipeFocusNode),
                    );
                  },
                  onSaved: (value){
                    _editedCategory = Category(
                      isFavorite:   _editedCategory.isFavorite,
                      id:           _editedCategory.id,
                      category:     _editedCategory.category,
                      subcategory:  _editedCategory.subcategory,
                      title:        _editedCategory.title,
                      description:  value,
                      recipe:       _editedCategory.recipe,
                      imageFile:     _editedCategory.imageFile,
                      price:        _editedCategory.price,
                    );
                  },
                ),
                TextFormField(
                    initialValue: _initValues['recipe'],
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please Enter Ingredients';
                    }
                    if(value.length < 15){
                      return 'Please Enter Detailed Description';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'recipe', hintText: 'Enter the Ingredients in your Dish.'),
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  maxLength: 650,
                  maxLengthEnforced: true,
                  onFieldSubmitted: (_){
                    FocusScope.of(context).requestFocus((_priceFocusNode),
                    );
                  },
                  onSaved: (value){
                    _editedCategory = Category(
                      isFavorite:         _editedCategory.isFavorite,
                      id:                 _editedCategory.id,
                      category:           _editedCategory.category,
                      subcategory:        _editedCategory.subcategory,
                      title:              _editedCategory.title,
                      description:        _editedCategory.description,
                      recipe:             value,
                      imageFile:     _editedCategory.imageFile,
                      price:              _editedCategory.price,
                    );
                  },
                ),
                TextFormField(
                    initialValue: _initValues['price'],
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please Enter A Price';
                    }
                    if(double.tryParse(value) == null){
                      return 'Please Enter A Valid Number';
                    }
                    if (double.parse(value) <= 0){
                      return'Please Enter A Number Greater Than Zero';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'price', hintText: 'Amount excluding taxes.'),
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  onFieldSubmitted:(_){
                    _saveForm();
                  },
                    onSaved: (value){
                      _editedCategory =Category(
                        isFavorite:   _editedCategory.isFavorite,
                        id:           _editedCategory.id,
                        category:     _editedCategory.category,
                        subcategory:  _editedCategory.subcategory,
                        title:        _editedCategory.title,
                        description:  _editedCategory.description,
                        recipe:       _editedCategory.recipe,
                        imageFile:     _editedCategory.imageFile,
                        price:        double.parse(value),
                      );},
                ),
              ],),
        ),
      ),
    );
  }
}

*/
