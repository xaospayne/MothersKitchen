import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/main_fav_screen.dart';
import '../screens/messages_screen.dart';
import '../screens/orders_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/home_screen.dart';
import '../screens/filters_screen.dart';
import 'auth/auth_screen.dart';

class AppDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler){
  return ListTile(
   onTap: tapHandler,
   leading: Icon(icon,size: 20,),
   title: Text(
   title,
   style:TextStyle(
   fontFamily: 'OpenSans',
   fontSize: 18,
   fontWeight: FontWeight.bold,
   ),
   ),
  );
}
@override
  Widget build(BuildContext context) {
  return Drawer(
   child: Column(
    children: <Widget>[
    AppBar(title: Text('Hi Guest'),automaticallyImplyLeading: false,),
    buildListTile('Home',Icons.home,(){Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);}),
    buildListTile('My Profile',Icons.account_box,(){Navigator.of(context).pushReplacementNamed(ProfileScreen.routeName);}),
    buildListTile('Messages',Icons.message,(){Navigator.of(context).pushReplacementNamed(MessagesScreen.routeName);}),
    buildListTile('My Orders',Icons.fastfood,(){Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);}),
    buildListTile('Favorites',Icons.favorite,(){Navigator.of(context).pushReplacementNamed(MainFavScreen.routeName);}),
    buildListTile('Settings',Icons.settings,(){Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);}),
    Divider(),
    buildListTile(
    'Logout', Icons.exit_to_app,() =>
    [FirebaseAuth.instance.signOut(),Navigator.of(context).pushReplacementNamed(AuthScreen.routeName)]
    ),
    ],
   )
  );
 }
}
